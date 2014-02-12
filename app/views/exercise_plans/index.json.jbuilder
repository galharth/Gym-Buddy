json.array!(@exercise_plans) do |exercise_plan|
  json.extract! exercise_plan, :id, :name, :type
  json.url exercise_plan_url(exercise_plan, format: :json)
end
