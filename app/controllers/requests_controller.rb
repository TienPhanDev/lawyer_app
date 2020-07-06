class RequestsController < ApplicationController
  before_action :get_request, only: [:show, :edit, :update, :destroy]

  def index
    @requests = Request.all
  end

  def show

  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to request_path(@request.id)
    else
      redirect_to new_request_path
    end
  end

  def edit

  end

  def update
    @request = Request.update(request_params)
    redirect_to request_path(@request)
  end

  def destroy

  end

  private 

  def get_request
    Request.find(params[:id])
  end

  def request_params
    params.require(:request).permit(:title, :date, :injury, :damages, :description, :police_report?, :client_id, :lawyer_id)
  end

end
