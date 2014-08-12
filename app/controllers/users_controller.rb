class UsersController < ApplicationController
  def welcome
  end

  def signup
    @user = User.new
  end

  def login
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      flash[:notice]="你好，#{@user.login}"
      redirect_to :root
    else
      render :signup
    end
  end

end
