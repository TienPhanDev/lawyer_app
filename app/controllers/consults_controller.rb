class ConsultsController < ApplicationController
  before_action :get_consult, only: [:show, :edit, :update, :destroy]


  def show
  end

  def new
    @consult = Consult.new
  end

  def create
    @request = Request.find(params[:request_id])
    @request.update(lawyer_id: current_user.id)
    byebug
    @consult = Consult.new
    @consult.assign_attributes(request_id: @request.id)
    if @consult.save
      flash[:success] = "Consultation Offer Created. Waiting for Client Response."
      redirect_to request_path(@request.id)
    else 
      flash[:danger] = "Something went wrong =("
      redirect_to request_path(@request.id)
    end
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
    @consult = Consult.find(params[:id])
  end

  def consult_params
    params.require(:consult).permit(:request_id, :time, :location, :status)
  end
end
