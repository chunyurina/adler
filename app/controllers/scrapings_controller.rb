class ScrapingsController < ApplicationController
  require 'mechanize'

  def index
    agent = Mechanize.new
    page = agent.get('https://www.jstage.jst.go.jp/browse/jjpsy/-char/ja')
    @elements = page.search('li .clickable_div')

    @elements.each do |ele|
      @article = Scraping.new
      @article = ele.inner_text
      # article.save
    end

  end
end