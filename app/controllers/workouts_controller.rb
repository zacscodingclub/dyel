class WorkoutsController < ApplicationController
  before_action authenticate_user!
  
  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def create

  end
end
