class ScrapingsController < ApplicationController
  require 'mechanize'

  def index
    agent = Mechanize.new
    page = agent.get('https://www.jstage.jst.go.jp/browse/jjpsy/list/-char/ja')
    @elements = page.search('//*[@id="search-resultslist-wrap"]/ul/li[1]/div[1]')
  end


end