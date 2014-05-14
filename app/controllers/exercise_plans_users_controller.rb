class ExercisePlansUsersController < ApplicationController

  def destroy
    @exercise_plan_users = ExercisePlansUsers.find(params[:id])
    @exercise_plan_users.destroy
    respond_to do |format|
      format.html { redirect_to home_index_path }
      format.json { head :no_content }
    end
  end

end
