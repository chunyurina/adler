class MessagesController < ApplicationController
  def index
  @article = Article.all
  end
end
