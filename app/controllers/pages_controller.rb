class PagesController < ApplicationController
  def index
    redirect_to workouts_path if user_signed_in?

  end
end
