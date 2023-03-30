class AirconPricesController < ApplicationController
  before_action :authenticate_user!, except: :index
  before_action :set_aircon_price, only: %i[edit update destroy]

  def index
    @aircon_prices = AirconPrice.all
  end

  def new
    @aircon_price = AirconPrice.new
  end

  def create
    @aircon_price = AirconPrice.new(aircon_price_params)

    if @aircon_price.save
      redirect_to aircon_prices_url, notice: "Price added successfully."
    else
      render :index, status: :unprocessable_entity
    end
  end

  def update
    if @aircon_price.update(aircon_price_params)
      redirect_to aircon_prices_url, notice: "Price was updated successfully."
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @aircon_price.destroy

    redirect_to aircon_prices_url, notice: "Price was removed successfully."
  end

  private

  def set_aircon_price
    @aircon_price = AirconPrice.find(params[:id])
  end

  def aircon_price_params
    params.require(:aircon_price).permit(:name, :basic_description, :chemical_description, :basic_price, :chemical_price, :image)
  end
end
