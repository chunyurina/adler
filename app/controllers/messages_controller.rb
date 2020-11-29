class MessagesController < ApplicationController
  def index
  @messages = Message.new
  # @message = Message.find(1)
  # @first_answer = @message.first_answer
  # @second_answer = @message.second_answer
  # @third_answer = @message.third_answer
  # @article = Article.find(1)
  end

  def create
    @messages = Message.new(answer_params)
    if @item.save
      redirect_to root_path, notice: "出品が完了しました"
  else
    render :new
    flash.now[:alert] = "商品出品に失敗しました"
  end

  end

  private

  def answer_params
    params.require(:message).permit(:first_answer).merge(user_id: current_user.id)
  end
  
end
