class MessagesController < ApplicationController
  def index
  @messages = Message.all
  @article = Article.find(1)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(answer_params)
    if @message.save
      redirect_to article_messages_path
  else
    redirect_to new_message_path
  end

  def article
    @message = Message.find(1)
    @first_answer = @message.first_answer
    @second_answer = @message.second_answer
    @third_answer = @message.third_answer
    @total = @first_answer + @second_answer + @third_answer
    @article = Article.find(1)
  end

  end

  private

  def answer_params
    params.require(:message).permit(:first_answer, :second_answer, :third_answer).merge(user_id: current_user.id)
  end

end
