class WorkoutsController < ApplicationController
  before_action :authenticate_user!

  def index
    @workouts = Workout.all
  end

  def show
    @workout = Workout.find(params[:id])
  end

  def new
    @workout = Workout.new
  end

  def create
    binding.pry
  end

  private
    def workout_params
      params.require(:workout).permit(:date)
    end
end
