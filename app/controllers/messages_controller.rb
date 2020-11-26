class MessagesController < ApplicationController
  def index
  @message = Message.find(1)
  @first_answer = @message.first_answer
  @second_answer = @message.second_answer
  @third_answer = @message.third_answer
  @article = Article.find(1)
  end
end
