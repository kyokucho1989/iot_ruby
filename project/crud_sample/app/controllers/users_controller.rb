class UsersController < ApplicationController
  # 以下のアクションを追加
  def index
    @users = User.all
  end
  
  def new
    @user = User.new
  end

  def create
    # Strong Parameter の記述
    User.create(user_params)
    #redirect_to :action => "index"  リダイレクトがいらなくなる。
  end
   
  
  


  def edit
    @user = User.find(params[:id])
  end

  def update
    user = User.find(params[:id])
    user.update(user_params)
  #  redirect_to :action => "index" リダイレクトは不要

  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
   # redirect_to :action => "index" リダイレクトは不要
  end
  private
  def user_params
    params.require(:user).permit(:name, :age)
  end
end
