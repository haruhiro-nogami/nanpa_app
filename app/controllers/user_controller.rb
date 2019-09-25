class UserController < ApplicationController

  def edit

  end

  def show

  end

  def login_form

  end

  def new

  end

  def logout

  end

  def create
    @user = User.new(
      name: params[:name],
      email: params[:email],
      password: params[:password])
    if @user.save
      flash[:notice] = "ユーザー登録を完了しました"
      redirect_to ("/user/show")
    else
      flash[:notice] = "ユーザー登録に失敗しました"
      render ("/signup")
    end
  end


end
