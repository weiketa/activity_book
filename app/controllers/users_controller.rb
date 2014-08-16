class UsersController < ApplicationController
  include BCrypt
  def welcome
  end

  def signup
    @user = User.new
  end

  def login
  end

  def login_out
    session.delete(:user_id)
    redirect_to :login
  end

  def create
    @user=User.new(params[:user])
    if @user.save
      session[:user_id]=@user.id
      redirect_to :root
    else
      render :signup
    end
  end

  def create_login_session
    user=User.find_by_login(params[:login])
    if user && user.authenticate(params[:password])
      session[:user_id]=user.id
      redirect_to :root
    else
      flash[:notice]= '用户名不存在或密码错误'
      render :login
    end
  end

  def user_manage
    @users=User.all
    @users=User.paginate(:page => params[:page], :per_page => 10)

  end

end
