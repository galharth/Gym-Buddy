class ExercisePlansController < ApplicationController
  before_action :set_exercise_plan, only: [:show, :edit, :update, :destroy]

  # GET /exercise_plans
  # GET /exercise_plans.json
  def index
    @exercise_plans = current_user.exercisePlans
  end

  # GET /exercise_plans/1
  # GET /exercise_plans/1.json
  def show
  end

  # GET /exercise_plans/new
  def new
    @exercise_plan = ExercisePlan.new
  end

  # GET /exercise_plans/1/edit
  def edit
  end

  # POST /exercise_plans
  # POST /exercise_plans.json
  def create
    i=get_exercise_plan_id(params[:weight],params[:height])
      @exercise_plan = ExercisePlansUsers.new(:user_id => current_user.id,:exercise_plan_id=>i)



    respond_to do |format|
      if @exercise_plan.save
        format.html { redirect_to "/exercise_plans/#{i}", notice: 'Exercise plan was successfully created.' }
        format.json { render action: 'show', status: :created, location: @exercise_plan }
      else
        format.html { render action: 'new' }
        format.json { render json: @exercise_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /exercise_plans/1
  # PATCH/PUT /exercise_plans/1.json
  def update
    respond_to do |format|
      if @exercise_plan.update(exercise_plan_params)
        format.html { redirect_to @exercise_plan, notice: 'Exercise plan was successfully updated.' }
        format.json { head :no_content }
      else
        format.html { render action: 'edit' }
        format.json { render json: @exercise_plan.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /exercise_plans/1
  # DELETE /exercise_plans/1.json
  def destroy
    @exercise_plan.destroy
    respond_to do |format|
      format.html { redirect_to exercise_plans_url }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def get_exercise_plan_id(wieght,height)
        bmi = ( wieght.to_f / ( height.to_f  * height.to_f ) )
        if bmi <= 18.5
          return 1
        else
          return 3
        end
    end

    def set_exercise_plan
      @exercise_plan = ExercisePlan.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def exercise_plan_params
      params.require(:exercise_plan).permit(:name, :type,:user_ids)
    end
end
