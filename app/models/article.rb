class Article < ApplicationRecord
  
  require 'mechanize'

  def psychology_urls
    agent = Mechanize.new
    page = agent.get('https://www.jstage.jst.go.jp/browse/jjpsy/-char/ja')
    @elements = page.search('li .clickable_div')

    @elements.each do |ele|
      article = Article.new
      article.url = ele.inner_text
      article.save
    end
  end
end
