class HomeController < ApplicationController
  def index
  	if user_signed_in?
  	    @exercise_plans = current_user.exercisePlans
  	 else
  	 	@exercise_plans=nil
  	 end
  end
end
