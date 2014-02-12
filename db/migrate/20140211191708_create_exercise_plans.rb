class CreateExercisePlans < ActiveRecord::Migration
  def change
    create_table :exercise_plans do |t|
      t.string :name
      t.string :type

      t.timestamps
    end
  end
end
