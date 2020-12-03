class MypagesController < ApplicationController
  def new
    
  end
  
  def show
    @users = User.find(params[:id])
  end

  def destroy
  end

end
