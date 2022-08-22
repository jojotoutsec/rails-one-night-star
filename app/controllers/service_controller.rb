class ServiceController < ApplicationController

  def index
    @service = Service.all
  end

  def new
    @service = Service.new(service_params)
  end

  def create
    @service = Service.new(service_params)
    if @service.save
      redirect_to service_path(@service)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def service_params
    params.require(:service).permit(:name, :category, :price)
  end
end
