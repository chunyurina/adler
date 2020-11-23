class ScrapingsController < ApplicationController
  require 'mechanize'

  def index
    agent = Mechanize.new
    page = agent.get('https://www.jstage.jst.go.jp/browse/jjpsy/-char/ja')
    @elements = page.search('//*[@id="most-popular-articles-list"]/li[1]')
    @elements.get_attribute(:href)
    # @elements = page.search('')

    # @elements.each do |ele|
    #   @hoge = ele.inner_text
    # end

  end
end