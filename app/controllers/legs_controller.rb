class LegsController < ApplicationController
  def index
    @legs = Leg.all
  end

  def show
    @leg = Leg.find(params[:id])
    @meal = Meal.new
    @stay = Stay.new
  end

  def new
    @leg = Leg.new

  end

  def create
    @leg = Leg.new
    @leg.location_id = params[:location_id]
    @leg.trip_id = params[:trip_id]

    if @leg.save
      redirect_to :back, :notice => "Leg created successfully."
    else
      render 'new'
    end
  end

  def edit
    @leg = Leg.find(params[:id])
  end

  def update
    @leg = Leg.find(params[:id])

    @leg.location_id = params[:location_id]
    @leg.trip_id = params[:trip_id]

    if @leg.save
      redirect_to "/trips", :notice => "Leg updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @leg = Leg.find(params[:id])

    @leg.destroy

    redirect_to "/trips", :notice => "Leg deleted."
  end
end
