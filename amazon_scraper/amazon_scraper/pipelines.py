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
                                passwd='K@rm@-P0l1c3')

        # Show databases
        cursor = self.db.cursor()
        cursor.execute("SHOW DATABASES")
        for x in cursor:
            print(x)

    def process_item(self, item, spider):
        cursor = self.db.cursor()
        query = 'INSERT INTO product_entry'
                '(Name, SKU, URL, Precio, Rating, Review, Date)'
                'VALUES ({}, {}, {}, {}, {}, {}, {});'
                .format(item['product_name'],
                        'SKU',
                        'URL',
                        item['product_sale_price'],
                        item['product_rating'],
                        'Review',
                        'Date')

        print(query)
        input()

        cursor.execute(query)

        return item
