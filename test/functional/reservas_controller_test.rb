require 'test_helper'

class ReservasControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:reservas)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create reserva" do
    assert_difference('Reserva.count') do
      post :create, :reserva => { }
    end

    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should show reserva" do
    get :show, :id => reservas(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => reservas(:one).to_param
    assert_response :success
  end

  test "should update reserva" do
    put :update, :id => reservas(:one).to_param, :reserva => { }
    assert_redirected_to reserva_path(assigns(:reserva))
  end

  test "should destroy reserva" do
    assert_difference('Reserva.count', -1) do
      delete :destroy, :id => reservas(:one).to_param
    end

    assert_redirected_to reservas_path
  end
end
