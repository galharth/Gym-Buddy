class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update, :destroy]
  def index
    if params[:search]
    @exercises = Exercise.where("name like ?", "%#{params[:search]}%")
    end
    @musclegroups=["חזה","גב","רגליים","כתפיים","ידיים"]
  end
  def show
  end
  def new
    @exercise = Exercise.new
  end
  def edit
  end
  def create
    @exercise = Exercise.new(exercise_params)
    respond_to do |format|
      if @exercise.save
        format.html { redirect_to @exercise, notice: 'Exercise was successfully created.' }
        format.json { render action: 'show', status: :created, location: @exercise }
      else
        format.html { render action: 'new' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end
  def update
    respond_to do |format|
      if @exercise.update(exercise_params)
        format.html { redirect_to @exercise, notice: 'Exercise was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise.errors, status: :unprocessable_entity }
      end
    end
  end
  def destroy
    @exercise.destroy
    respond_to do |format|
      format.html { redirect_to exercises_url }
      format.json { head :no_content }
    end
  end
  private
    def set_exercise
      @exercise = Exercise.find(params[:id])
    end
      def exercise_params
      params.require(:exercise).permit(:name, :YoutubeLink, :GifLink, :instructions, :muscles, :MassInstructions, :CutInstructions,
       :StaminaInstructions,:exercisePlan_ids,:musclegroup)
    end
end
