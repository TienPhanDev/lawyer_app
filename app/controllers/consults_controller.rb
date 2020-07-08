class ConsultsController < ApplicationController
  before_action :get_consult, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    @consult = Consult.new
  end

  def create
    @request = Request.find(params[:request_id])
    @consult = Consult.new(request_id: @request.id)
  end

  def edit

  end

  def update
    @consult.update(consult_params)
    redirect_to consult_path(@consult.id)
  end

  def destroy
    @consult.destroy
    redirect_to user_path(current_user)
  end

  private 

  def get_consult
    @consult = consult.find(params[:id])
  end

  def consult_params
    params.require(:consult).permit(:request_id, :time, :location)
  end
end
