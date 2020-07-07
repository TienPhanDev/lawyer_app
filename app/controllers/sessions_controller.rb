class SessionsController < ApplicationController

  def new

  end

  def create
    session[:user_id] = User.find_by(email: params[:email]).id
  end

  def destroy

  end
end
