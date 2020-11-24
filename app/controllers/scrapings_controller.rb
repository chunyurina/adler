class ScrapingsController < ApplicationController
  require 'mechanize'

  def index
    agent = Mechanize.new
    page = agent.get('https://smartlog.jp/')
    # @elements = page
    @elements = page.search()
    # # @elements.get_attribute(:href)
    # # # @elements = page.search('')

    @elements.each do |ele|
      @hoge = ele[:href]
      
    end

  end
end