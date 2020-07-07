class UsersController < ApplicationController
  before_action :get_user, only: [:show, :edit, :update, :destroy]

  def index
    if current_user.lawyer == false
      @users = User.lawyers
    else
      redirect_to requests_path
    end
    # @users = User.all
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

  end

  private 

  def get_user
    @user = User.find(params[:id])
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation, :phone_number, :state, :years_experience, :lawyer)
  end

end
