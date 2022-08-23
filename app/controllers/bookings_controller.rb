class BookingsController < ApplicationController
  before_action :set_booking, only: [:edit, :update, :destroy]

  def new
    @booking = Booking.new(booking_params)
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    @booking.service = Service.find(params[:service_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new, status: :unprocessable_entity
    end
  end

  def edit
  end

  def update
    if @booking.update(booking_params)
      redirect_to booking_path(@booking)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path, status: :see_other
  end

private

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:service).permit(:start_date, :end_date, :service_id, :user_id)
  end
end
