class AddIdToExercisePlansUsers < ActiveRecord::Migration
  def change
  	add_column :exercise_plans_users, :id, :primary_key
  end
end
