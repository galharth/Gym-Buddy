class CreateExercisePlansExercises < ActiveRecord::Migration
  def change
create_table :exercise_plans_exercises, :id => false do |t|
  t.references :exercise_plan, :null => false
  t.references :exercise, :null => false
end

  end
end
