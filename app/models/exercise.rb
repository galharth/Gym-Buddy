class Exercise < ActiveRecord::Base

	has_and_belongs_to_many :exercisePlans
	accepts_nested_attributes_for :exercisePlans

validates_presence_of :name, :YoutubeLink, :GifLink, :instructions, :muscles,:musclegroup


end
