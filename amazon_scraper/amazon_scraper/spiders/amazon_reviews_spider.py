# -*- coding: utf-8 -*-

# Importing Scrapy Library
import scrapy
from bs4 import BeautifulSoup
from amazon_scraper.items import AmazonItem


# Creating a new class to implement Spider
class AmazonReviewsSpider(scrapy.Spider):
    # Spider name
    name = 'amazon_reviews'

    # Domain names to scrape
    allowed_domains = ['amazon.com.mx']

    # Base URL with search "iphone x smartphone"
    start_urls = ['https://www.amazon.com.mx/s?'
                  'k=iphone+x+smartphone&rh=n%3'
                  'A9687460011&__mk_es_MX=%C3%8'
                  '5M%C3%85%C5%BD%C3%95%C3%91&ref=nb_sb_noss']

    # Spider configuration
    custom_settings = {'CONCURRENT_REQUESTS': '1',
                       'DEFAULT_ITEM_CLASS' : 'AmazonItem',
                       'ROBOTSTXT_OBEY': 'False'}

    # Defining a Scrapy parser
    def parse(self, response):

        # Parse each result (24 per page)

        for item in response.xpath('//span[@cel_widget_id='
                                   '"SEARCH_RESULTS-SEARCH_RESULTS"]'):

            product = AmazonItem()

            item_bs4 = BeautifulSoup(item.get(), "lxml")

            price_bs4 = item_bs4.find("span", {"class": "a-price-whole"})
            name_bs4 = item_bs4.find("span", {"class": "a-size-base-plus "
                                                       "a-color-base "
                                                       "a-text-normal"})
            rating_bs4 = item_bs4.find("span", {"class": "a-icon-alt"})

            # Product sale price

            if price_bs4:
                product['product_sale_price'] = price_bs4.text
            else:
                product['product_sale_price'] = "NA"

            # Product name

            if name_bs4:
                product['product_name'] = name_bs4.text
            else:
                product['product_name'] = "NA"

            # Product rating

            if rating_bs4:
                product['product_rating'] = rating_bs4.text
            else:
                product['product_rating'] = "NA"

            # Other attributes

            product['product_category'] = "NA"
            product['product_original_price'] = "NA"
            product['product_availability'] = "NA"

            yield product
            
