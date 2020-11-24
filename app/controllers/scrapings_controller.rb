class ScrapingsController < ApplicationController
  require 'mechanize'

  def index
    agent = Mechanize.new
    page = agent.get('https://www.apple.com/jp/?afid=p238%7CsKSMckWTz-dc_mtid_18707vxu38484_pcrid_479606761351_pgrid_13140806301_&cid=aos-jp-kwgo-brand--slid---product--')
    # @elements = page
    @elements = page.search('.ac-gf-directory-column-section')
    # # @elements.get_attribute(:href)
    # # # @elements = page.search('')

    # @elements.each do |ele|
    #   @hoge = ele[:href]
     

  end
end