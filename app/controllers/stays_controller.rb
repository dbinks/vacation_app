class StaysController < ApplicationController
  def index
    @stays = Stay.all
  end

  def show
    @stay = Stay.find(params[:id])
    @location_id = Leg.find_by(:id => @stay.leg_id).location_id
  end

  def new
    @stay = Stay.new
  end

  def create
    @stay = Stay.new
    @stay.hotel_id = params[:hotel_id]
    @stay.leg_id = params[:leg_id]
    @stay.rating = params[:rating]
    @stay.description = params[:description]

    if @stay.save
      redirect_to :back, :notice => "Stay created successfully."
    else
      render 'new'
    end
  end

  def edit
    @stay = Stay.find(params[:id])
  end

  def update
    @stay = Stay.find(params[:id])

    @stay.hotel_id = params[:hotel_id]
    @stay.leg_id = params[:leg_id]
    @stay.rating = params[:rating]
    @stay.description = params[:description]

    if @stay.save
      redirect_to "/stays", :notice => "Stay updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @stay = Stay.find(params[:id])

    @stay.destroy

    redirect_to "/trips", :notice => "Stay deleted."
  end
end
