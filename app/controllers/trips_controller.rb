class TripsController < ApplicationController
  def index
    @trips = current_user.trips
  end

  def show
    @trip = Trip.find(params[:id])
    @leg = Leg.new
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new
    @trip.user_id = params[:user_id]
    @trip.name = params[:name]
    @trip.start_date = params[:start_date]
    @trip.end_date = params[:end_date]

    if @trip.save
      redirect_to "/trips", :notice => "Trip created successfully."
    else
      render 'new'
    end
  end

  def edit
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])

    @trip.name = params[:name]
    @trip.start_date = params[:start_date]
    @trip.end_date = params[:end_date]

    if @trip.save
      redirect_to "/trips", :notice => "Trip updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @trip = Trip.find(params[:id])

    @trip.destroy

    redirect_to "/trips", :notice => "Trip deleted."
  end
end
