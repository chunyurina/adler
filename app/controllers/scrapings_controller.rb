class ScrapingsController < ApplicationController
  require 'mechanize'

  def index
    agent = Mechanize.new
    page = agent.get('https://techacademy.jp/')
    @elements = page.body
  end

end