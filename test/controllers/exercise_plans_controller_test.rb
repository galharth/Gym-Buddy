require 'test_helper'

class ExercisePlansControllerTest < ActionController::TestCase
  setup do
    @exercise_plan = exercise_plans(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:exercise_plans)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create exercise_plan" do
    assert_difference('ExercisePlan.count') do
      post :create, exercise_plan: { name: @exercise_plan.name, type: @exercise_plan.type }
    end

    assert_redirected_to exercise_plan_path(assigns(:exercise_plan))
  end

  test "should show exercise_plan" do
    get :show, id: @exercise_plan
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @exercise_plan
    assert_response :success
  end

  test "should update exercise_plan" do
    patch :update, id: @exercise_plan, exercise_plan: { name: @exercise_plan.name, type: @exercise_plan.type }
    assert_redirected_to exercise_plan_path(assigns(:exercise_plan))
  end

  test "should destroy exercise_plan" do
    assert_difference('ExercisePlan.count', -1) do
      delete :destroy, id: @exercise_plan
    end

    assert_redirected_to exercise_plans_path
  end
end
