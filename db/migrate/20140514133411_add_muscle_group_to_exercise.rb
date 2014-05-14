class AddMuscleGroupToExercise < ActiveRecord::Migration
  def change
  	add_column :exercises, :musclegroup, :string
  end
end
