require "httparty"
require 'nokogiri'

url = "https://www.google.com/finance?q=NASDAQ:AAPL"

response = HTTParty.get(url)

 # response.headers['content-type']

 dom = Nokogiri::HTML(response.body)
# puts dom.xpath("//span").size
# p my_span = dom.css(".quote-header-info").size
# # p my_span = ("quote-header-info").size
p dom.css("span#ref_22144_l").children.text
# puts pa.n"content"

<<<<<<< HEAD


# check what i have done.
=======
#Karen was here!!!!!!!!!!
>>>>>>> 919fc7d54caf800e9f099b61d9b878069c9d1efc
