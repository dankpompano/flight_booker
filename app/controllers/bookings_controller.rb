class BookingsController < ApplicationController
  def new
    @booking = Booking.new
    @flights = Flight.all
  end  

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to @booking, notice: "Booking successful!"
    else
      @flights = Flight.all
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
    redirect_to flights_path, notice: "Booking has been destroyed"
  end

  private
  def booking_params
  params.require(:booking).permit(:flight_id, passenger_attributes: [:name, :email])  end
end
