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
    @first_question = Yesno.find(1, 2)
  end

  def create
    @message = Message.new(answer_params)
    if @message.save
      redirect_to edit_messages_path, notice: "出品が完了しました"
  else
    redirect_to new_message_path
    flash.now[:alert] = "商品出品に失敗しました"
  end

  def edit
    @message = Message.last
  end

  def update
    @message = Message.last
    @message.update(answer_params)
      if @message.third_answer.present?
          redirect_to article_messages_path
      else
         redirect_to edit_messages_path
      end
  end

  def article
    @message = Message.last
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

  # -if Message.last.firsr_answer.present?
  #     @message = Message.last
  # - elsif Message.last.second_answer.present?
  #     @message = Message.last
  # - else
  #     @message = Message.new
    

end
