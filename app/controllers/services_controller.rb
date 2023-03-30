class ServicesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_service, only: %i[edit update destroy]

  def index
    @services = Service.all
  end

  def new
    @service = Service.new
  end

  def create
    @service = Service.new(service_params)

    if @service.save
      redirect_to services_url, notice: "Service was successfully created."
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update
    if @service.update(service_params)
      redirect_to services_url, notice: "Service was successfully updated."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @service.destroy

    redirect_to services_url, notice: "Service was successfully removed."
  end

  private

  def set_service
    @service = Service.find(params[:id])
  end

  def service_params
    params.require(:service).permit(:title, :description, :image)
  end
end
