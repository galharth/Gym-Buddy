class CreateExercises < ActiveRecord::Migration
  def change
    create_table :exercises do |t|
      t.string :name
      t.string :YoutubeLink
      t.string :GifLink
      t.text :instructions
      t.string :muscles
      t.text :MassInstructions
      t.text :CutInstructions
      t.text :StaminaInstructions

      t.timestamps
    end
  end
end
