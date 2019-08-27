class AirportsController < ApplicationController
  def show
    @airport = Airport.find(params[:id])
    @markers = [{
        lat: @airport.latitude,
        lng: @airport.longitude
      }]
    @booking = Booking.new
  end
end
