json.array!(@exercises) do |exercise|
  json.extract! exercise, :id, :name, :YoutubeLink, :GifLink, :instructions, :muscles, :MassInstructions, :CutInstructions, :StaminaInstructions
  json.url exercise_url(exercise, format: :json)
end
