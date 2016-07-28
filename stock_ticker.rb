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



