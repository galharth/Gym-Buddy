module ApplicationHelper

 def is_active?(link_path)
  current_page?(link_path) ? "active" : ""
 end

 def exercisesmuscle(musclegroup)
 	@exercisesmuscle = Exercise.where(:musclegroup => musclegroup)
 end

def exercise_plans_users(exercise_plan_id)
	@exercise_plans_users = ExercisePlansUsers.where(:user_id=>current_user.id,:exercise_plan_id=>exercise_plan_id).first
end
end
