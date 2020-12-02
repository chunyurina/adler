class MessagesController < ApplicationController
  def index
  # @messages = Message.new
  @messages = Message.all
  # -if Message.find(1).persisted?
  # @first_answer = @message.first_answer
  # @second_answer = @message.second_answer
  # @third_answer = @message.third_answer
  # end
  @article = Article.find(1)
  end

  def new
    @message = Message.new
  end

  def create
    @message = Message.new(answer_params)
    if @messages.save
      redirect_to root_path, notice: "出品が完了しました"
  else
    render :new
    flash.now[:alert] = "商品出品に失敗しました"
  end

  end

  private

  def answer_params
    params.require(:message).permit(:first_answer, :second_answer, :third_answer).merge(user_id: current_user.id)
  end

end
