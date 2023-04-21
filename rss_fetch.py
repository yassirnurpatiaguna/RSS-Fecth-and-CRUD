# mengimport beberapa library
import feedparser as fp
import mysql.connector as mc
from datetime import datetime
from time import mktime

conn = mc.connect(user='root', 
                password='', 
                host='localhost', 
                database='rss')

# setup url rss untuk diambil datanya
url_RSS = 'https://news.detik.com/rss'
fetch_RSS = fp.parse(url_RSS)

# mengambil rss feeds dan distore ke database
for item in fetch_RSS['items']:
    title  = item.title 
    pubdate = datetime.fromtimestamp(mktime(item.published_parsed))
    description = item.description
    link = item.link
    try :
        data = """INSERT INTO news(title,pubDate,description,link) VALUES(%s,%s,%s,%s)"""
        c = conn.cursor()
        c.execute(data, (title, pubdate, description, link))
        conn.commit()
        print('data dengan title: {}, sukses store ke database.'.format(title))
    
    except Exception as e:
        print('error', e)



