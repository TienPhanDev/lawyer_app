class UsersController < ApplicationController
  before_action :get_user, only: [ :show, :edit, :update, :destroy]
  before_action :correct_user, only: [:show, :edit, :update, :destroy]
  def index
    @users = User.lawyers
  end

  def show

  end

  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    if @user.save
      flash[:success] = "Signup Successful. Welcome!"
      session[:user_id] = @user.id
      redirect_to user_path(@user.id)
    else
      render 'new'
    end
  end

  def edit

  end

  def update
    @user.update(user_params)
    redirect_to user_path(@user.id)
  end

  def destroy
    @user.destroy
    flash[:success] = "Your account has been deleted."
    session.clear
    redirect_to root_path
  end

  private 

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone_number, :state, :years_experience, :lawyer)
  end

  def correct_user
    @user = User.find(params[:id])
    unless @user.current_or_lawyer?(current_user)
      flash[:danger] = "You can't access other users' profiles!"
      redirect_to root_path 
    end

  end

end
