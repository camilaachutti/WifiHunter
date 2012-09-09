require 'test_helper'

class PreysControllerTest < ActionController::TestCase
  setup do
    @prey = preys(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:preys)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create prey" do
    assert_difference('Prey.count') do
      post :create, prey: { city: @prey.city, country: @prey.country, person_email: @prey.person_email, person_name: @prey.person_name, place: @prey.place, state: @prey.state }
    end

    assert_redirected_to prey_path(assigns(:prey))
  end

  test "should show prey" do
    get :show, id: @prey
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @prey
    assert_response :success
  end

  test "should update prey" do
    put :update, id: @prey, prey: { city: @prey.city, country: @prey.country, person_email: @prey.person_email, person_name: @prey.person_name, place: @prey.place, state: @prey.state }
    assert_redirected_to prey_path(assigns(:prey))
  end

  test "should destroy prey" do
    assert_difference('Prey.count', -1) do
      delete :destroy, id: @prey
    end

    assert_redirected_to preys_path
  end
end
