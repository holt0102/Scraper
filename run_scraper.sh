#!/bin/bash
# A script to quickly execute the default scraping jobs.

cd 'amazon_scraper'
scrapy crawl amazon_reviews -a filename=urls.txt