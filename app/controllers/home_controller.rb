class HomeController < ApplicationController
require 'nokogiri'
require 'open-uri'

  def index
    
  

@naver = []


10.times do |e|
doc = Nokogiri::HTML(open("http://news.naver.com/main/search/search.nhn?query=%BA%CF%C7%D9&st=news.all&q_enc=EUC-KR&r_enc=UTF-8&r_format=xml&rp=none&sm=all.basic&ic=all&so=rel.dsc&detail=0&pd=1&r_cluster2_start=1&r_cluster2_display=10&start=1&display=10&page=#{e}"))

doc.css(".tit").each do |n|
@naver.push(n.text)
end
  end
  end
end
