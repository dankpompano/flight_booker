class FlightsController < ApplicationController
  def new
    @flight = Flight.new
  end

  def edit
    @flight = Flight.find(params[:id])
  end
  
  def index
    @flights = Flight.all
    @flights = @flights.where(arrival_ids: params[:arrival_ids]) if params[:arrival_ids].present?
    @flights = @flights.where(departure_ids: params[:departure_ids]) if params[:departure_ids].present?
    @flights = @flights.where(pass_num: params[:pass_num]) if params[:pass_num].present?
    @flights = @flights.where(start: params[:start]) if params[:start].present?
  end

  private
  def flight_params
    params.require(:flight).permit(:arrival_id, :departure_ids, :flight_duration, :start)
  end
end


