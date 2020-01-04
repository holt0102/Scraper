# -*- coding: utf-8 -*-

# Define your item pipelines here
#
# Don't forget to add your pipeline to the ITEM_PIPELINES setting
# See: https://doc.scrapy.org/en/latest/topics/item-pipeline.html

import mysql.connector as mysql


class AmazonScraperPipeline(object):
    def process_item(self, item, spider):
        return item


class SQLStorePipeline(object):

    def __init__(self):
        self.db = mysql.connect(host='localhost',
                                user='remote',
                                passwd='K@rm@-P0l1c3',
                                database='amazon_reviews')

        # Show databases
        cursor = self.db.cursor()
        cursor.execute("SHOW DATABASES")
        for x in cursor:
            print(x)

    def process_item(self, item, spider):
        # Construct query
        query = 'INSERT INTO product_entry ' + \
                '(Name, SKU, URL, Precio, Rating, Review, Date) ' + \
                'VALUES ("{}", "{}", "{}", {}, "{}", "{}", "{}");'

        query = query.format(item['product_name'].replace('"', ''),
                             'SKU', 'URL',
                             float(item['product_sale_price']
                                   .replace(',', '')),
                             item['product_rating'],
                             'Review', 'Date')

        # Execute query
        cursor = self.db.cursor()
        cursor.execute(query)
        self.db.commit()
        print(cursor.rowcount, "record inserted.")

        return item
