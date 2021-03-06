require 'open-uri'

class LocationsController < ApplicationController
  def index
    @locations = Location.all
  end

  def show

    @location = Location.find(params[:id])
    @street_address = @location.place
    @url= URI.encode(@street_address)
  end

  def new
    @location = Location.new
  end

  def create
    @location = Location.new
    @location.place = params[:place]
    @location.place_image = params[:place_image]

    if @location.save
      redirect_to "/trips", :notice => "Location created successfully."
    else
      render 'new'
    end
  end

  def edit
    @location = Location.find(params[:id])
  end

  def update
    @location = Location.find(params[:id])

    @location.place = params[:place]
    @location.place_image = params[:place_image]

    if @location.save
      redirect_to "/locations", :notice => "Location updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @location = Location.find(params[:id])

    @location.destroy

    redirect_to "/locations", :notice => "Location deleted."
  end
end
