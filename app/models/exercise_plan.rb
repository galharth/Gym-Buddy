class ExercisePlan < ActiveRecord::Base
	    self.inheritance_column = nil
	    has_and_belongs_to_many :exercises
	    has_and_belongs_to_many :users
	    	accepts_nested_attributes_for :users



end
