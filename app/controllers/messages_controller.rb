class MessagesController < ApplicationController
  def index
  @messages = Message.all
  @article = Article.find(1)
  end

  def new
    @message = Message.new
    @first_question = Yesno.find(1, 2)
    @category = Category.find(1)
  end

  def create
    @message = Message.new(answer_params)
    @category = Category.find(1)
    if @message.save
      redirect_to edit_messages_path
    else
      redirect_to new_message_path
    end

  def edit
    @message = Message.last
  end

  def update
    @message = Message.last
    @message.update(answer_params)
      if @message.memo.present?
          redirect_to root_path
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
    @article = Article.all
  end

  end

  private

  def answer_params
    params.require(:message).permit(:memo, :category_id).merge(user_id: current_user.id)
  end

  # -if Message.last.firsr_answer.present?
  #     @message = Message.last
  # - elsif Message.last.second_answer.present?
  #     @message = Message.last
  # - else
  #     @message = Message.new
    

end
