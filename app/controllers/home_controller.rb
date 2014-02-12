class HomeController < ApplicationController
  def index
  	    @exercise_plans = ExercisePlan.all
  end
end
