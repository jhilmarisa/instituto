require 'test_helper'

class EspecialidadesControllerTest < ActionController::TestCase
  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:especialidades)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create especialidade" do
    assert_difference('Especialidade.count') do
      post :create, :especialidade => { }
    end

    assert_redirected_to especialidade_path(assigns(:especialidade))
  end

  test "should show especialidade" do
    get :show, :id => especialidades(:one).to_param
    assert_response :success
  end

  test "should get edit" do
    get :edit, :id => especialidades(:one).to_param
    assert_response :success
  end

  test "should update especialidade" do
    put :update, :id => especialidades(:one).to_param, :especialidade => { }
    assert_redirected_to especialidade_path(assigns(:especialidade))
  end

  test "should destroy especialidade" do
    assert_difference('Especialidade.count', -1) do
      delete :destroy, :id => especialidades(:one).to_param
    end

    assert_redirected_to especialidades_path
  end
end
