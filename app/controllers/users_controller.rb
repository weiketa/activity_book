class UsersController < ApplicationController
  def welcome
  end

  def signup
    @user = User.new
  end

  def login
  end

  def create
    @user=User.new(user_params)
    if @user.save
      redirect_to :root
    else
      render :signup
    end
  end
  private
    def user_params
      params.require(:user).permit(:login,:password,:salt,:question_of_password,:answer_of_password)
    end
end
