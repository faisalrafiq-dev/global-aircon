class BookingsController < ApplicationController
  def index
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)

    if @booking.save
      redirect_to root_url, notice: "Thanks for booking. We will contact you shortly."
    else
      render :index, status: :unprocessable_entity
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:name, :email, :phone, :address, :scheduled_date, :comment)
  end
end
