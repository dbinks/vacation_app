class MealsController < ApplicationController
  def index
    @meals = current_user.meals
  end

  def show
    @meal = Meal.find(params[:id])
    @location_id = Leg.find_by(:id => @meal.leg_id).location_id

  end

  def new
    @meal = Meal.new
  end

  def create
    @meal = Meal.new
    @meal.user_id = params[:user_id]
    @meal.restaurant_id = params[:restaurant_id]
    @meal.leg_id = params[:leg_id]
    @meal.rating = params[:rating]
    @meal.description = params[:description]

    if @meal.save
      redirect_to :back, :notice => "Meal created successfully."
    else
      redirect_to :back, :notice => "Entry error"
    end
  end

  def edit
    @meal = Meal.find(params[:id])
    @location_id = Leg.find_by(:id => @meal.leg_id).location_id
  end

  def update
    @meal = Meal.find(params[:id])

    @meal.restaurant_id = params[:restaurant_id]
    @meal.leg_id = params[:leg_id]
    @meal.rating = params[:rating]
    @meal.description = params[:description]

    if @meal.save
      redirect_to "/meals", :notice => "Meal updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @meal = Meal.find(params[:id])

    @meal.destroy

    redirect_to "/meals", :notice => "Meal deleted."
  end
end
