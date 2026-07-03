class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def edit
    @flight = Flight.find(params[:id])
  end
  
  def index
    if params[:search].present?
      @flights = Flight.where("title LIKE ?", "%#{params[:search]}%")
      @airport = Airport.find(params[:id])
    else 
      @flights = Flight.all
    end
  end

  private
  def flight_params
    params.require(:flight).permit(:arrival_id, :departure_ids, :flight_duration, :start)
  end
end
