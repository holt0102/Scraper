
PRICE

for item in response.xpath('//span[@class="a-price-whole"]'):
    price_html = item.get()
    price = BeautifulSoup(price_html, "lxml")
    print(price.span.text)

PRODUCT NAME

for item in response.xpath('//span[@class="a-size-base-plus a-color-base a-text-normal"]'):
    name_html = item.get()
    name = BeautifulSoup(name_html, "lxml")
    print(name.span.text)

RATING

for item in response.xpath('//span[contains(@aria-label, "estrellas")]'):
    rating_html = item.get()
    rating = BeautifulSoup(rating_html, "lxml")
    print(rating.span.text.strip())

ITEM

for item in response.xpath('//span[@cel_widget_id="SEARCH_RESULTS-SEARCH_RESULTS"]'):

    item_bs4 = BeautifulSoup(item.get(), "lxml")
    price = item_bs4.find("span", {"class" : "a-price-whole"}).text
    name = item_bs4.find("span", {"class" : "a-size-base-plus a-color-base a-text-normal"}).text
    rating = item_bs4.find("span", {"class" : "a-icon-alt"}).text


<span class="a-size-medium a-color-base a-text-normal">Apple iPhone X Plata 64 GB (Renewed)</span>

'<span cel_widget_id="SEARCH_RESULTS-SEARCH_RESULTS" class="celwidget slot=SEARCH_RESULTS template=SEARCH_RESULTS widgetId=search-results index=0">

    <div class="s-expand-height s-include-content-margin s-border-bottom">\n<div class="a-section a-spacing-medium">

        <div class="a-section a-spacing-micro s-min-height-extra-large">

        </div>

        <span data-component-type="s-product-image" class="rush-component">

            <a class="a-link-normal" href="/Apple-iPhone-desbloqueado-Refurbished-Plateado/dp/B07757WNJP">

                <div class="a-section aok-relative s-image-square-aspect">

                    <img src="https://m.media-amazon.com/images/I/81yZOQEC+NL._AC_UL320_ML3_.jpg" class="s-image" alt="Apple iPhone X Plata 64 GB (Renewed)" srcset="https://m.media-amazon.com/images/I/81yZOQEC+NL._AC_UL320_ML3_.jpg 1x, https://m.media-amazon.com/images/I/81yZOQEC+NL._AC_UL480_QL65_ML3_.jpg 1.5x, https://m.media-amazon.com/images/I/81yZOQEC+NL._AC_UL640_QL65_ML3_.jpg 2x, https://m.media-amazon.com/images/I/81yZOQEC+NL._AC_UL800_QL65_ML3_.jpg 2.5x, https://m.media-amazon.com/images/I/81yZOQEC+NL._AC_UL960_QL65_ML3_.jpg 3x" data-image-index="0" data-image-load="" data-image-latency="s-product-image" data-image-source-density="1" onload="window.uet &amp;&amp; uet(\'cf\')">

                </div>

            </a>
    
        </span>

        <div class="a-section a-spacing-none a-spacing-top-small">

            <h2 class="a-size-mini a-spacing-none a-color-base s-line-clamp-4">

                <a class="a-link-normal a-text-normal" href="/Apple-iPhone-desbloqueado-Refurbished-Plateado/dp/B07757WNJP">

                    <span class="a-size-base-plus a-color-base a-text-normal">Apple iPhone X Plata 64 GB (Renewed)</span>

                </a>

            </h2>

        </div>

        <div class="a-section a-spacing-none a-spacing-top-micro">

            <div class="a-row a-size-small">

                <span aria-label="3.7 de 5 estrellas">

                    <span class="a-declarative" data-action="a-popover" data-a-popover=\'{"max-width":"700","closeButton":false,"position":"triggerBottom","url":"/review/widgets/average-customer-review/popover/ref=acr_search__popover?ie=UTF8&amp;asin=B07757WNJP&amp;ref=acr_search__popover&amp;contextId=search"}\'>

                        <a href="javascript:void(0)" class="a-popover-trigger a-declarative"><i class="a-icon a-icon-star-small a-star-small-3-5 aok-align-bottom">

                        <span class="a-icon-alt">3.7 de 5 estrellas</span></i><i class="a-icon a-icon-popover"></i></a>

                    </span>

                </span>

                <span aria-label="17">

                    <a class="a-link-normal" href="/Apple-iPhone-desbloqueado-Refurbished-Plateado/dp/B07757WNJP#customerReviews">

                        <span class="a-size-base">17</span>

                    </a>

                </span>

            </div>

        </div>

        <div class="a-section a-spacing-none a-spacing-top-small">

            <div class="a-row a-size-base a-color-base">

                <div class="a-row">

                    <a class="a-size-base a-link-normal s-no-hover a-text-normal" href="/Apple-iPhone-desbloqueado-Refurbished-Plateado/dp/B07757WNJP">

                        <span class="a-price" data-a-size="l" data-a-color="base">

                            <span class="a-offscreen">$11,348.00</span>

                            <span aria-hidden="true">

                                <span class="a-price-symbol">$</span>

                                <span class="a-price-whole">11,348

                                    <span class="a-price-decimal">.</span>

                                </span>

                                <span class="a-price-fraction">00</span>

                            </span>

                        </span>

                        <span class="a-price a-text-price" data-a-size="b" data-a-strike="true" data-a-color="secondary">

                            <span class="a-offscreen">$17,999.00</span>

                            <span aria-hidden="true">$17,999.00</span>

                        </span>

                    </a>

                </div>

            </div>

        </div>

        <div class="a-section a-spacing-none a-spacing-top-micro">

            <div class="a-row a-size-base a-color-secondary s-align-children-center">

                <div class="a-row s-align-children-center">

                    <span class="aok-inline-block s-image-logo-view">

                        <span class="aok-relative s-icon-text-medium s-prime">

                            <i class="a-icon a-icon-prime a-icon-medium" role="img" aria-label="Amazon Prime"></i>

                        </span>

                    <span>

                </span>

            </span>

            <span aria-label="Recíbelo Mañana, 28 de diciembre">

                <span>Recíbelo </span>

                <span class="a-text-bold">Mañana, 28 de diciembre</span>

            </span>

        </div>

        <div class="a-row">

        <span aria-label="Envío GRATIS por Amazon México">

            <span>Envío GRATIS por Amazon México</span>

        </span>

    </div>

</div>

</div>

</div>

</div>

</span>'


------------------------------------------------------------------------------------------------------------------------------------------------
# -*- coding: utf-8 -*-

# Importing Scrapy Library
import scrapy
from bs4 import BeautifulSoup
#from amazon_scraper.items import AmazonItem

# Creating a new class to implement Spide
class AmazonReviewsSpider(scrapy.Spider):

    # Spider name
    name = 'amazon_reviews'

    # Domain names to scrape
    allowed_domains = ['amazon.com.mx']

    # Base URL for the MacBook air reviews
    start_urls = ['https://www.amazon.com.mx/s?k=iphone+x+smartphone&rh=n%3A9687460011&__mk_es_MX=%C3%85M%C3%85%C5%BD%C3%95%C3%91&ref=nb_sb_noss']

    # Spider configuration
    #custom_settings = {'CONCURRENT_REQUESTS': '1', 'DEFAULT_ITEM_CLASS' : 'AmazonItem'}

    # Defining a Scrapy parser
    def parse(self, response):

        for item in response.xpath('//span[@cel_widget_id="SEARCH_RESULTS-SEARCH_RESULTS"]'):

            product = AmazonItem()

            item_bs4 = BeautifulSoup(item.get(), "lxml")

            price_bs4 = item_bs4.find("span", {"class" : "a-price-whole"})
            #price_orig_bs4 = item_bs4.find("span", {"class" : "a-price a-text-price"}).find("span")
            name_bs4 = item_bs4.find("span", {"class" : "a-size-base-plus a-color-base a-text-normal"})
            rating_bs4 = item_bs4.find("span", {"class" : "a-icon-alt"})

            # Product sale price

            if price_bs4:
                product['product_sale_price'] = price_bs4.text
            else:
                product['product_sale_price'] = "NA"

            # Product original price
            '''
            if price_orig_bs4:
                product['product_original_price'] = price_orig_bs4.text
            else:
                product['product_original_price'] = "NA"
            '''
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

            product['product_category'] = "NA"
            product['product_availability'] = "NA"

            yield{ item }

