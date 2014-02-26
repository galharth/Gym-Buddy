class CreateExercisePlansUsers < ActiveRecord::Migration
  def change
create_table :exercise_plans_users, :id => false do |t|
  t.references :user, :null => false
  t.references :exercise_plan, :null => false
end

# Adding the index can massively speed up join tables. Don't use the
# unique if you allow duplicates.
add_index(:exercise_plans_users, [:user_id, :exercise_plan_id], :unique => true)
    
  end
end
