require 'test_helper'

class EnviosControllerTest < ActionController::TestCase
  setup do
    @envio = envios(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:envios)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create envio" do
    assert_difference('Envio.count') do
      post :create, envio: {  }
    end

    assert_redirected_to envio_path(assigns(:envio))
  end

  test "should show envio" do
    get :show, id: @envio
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @envio
    assert_response :success
  end

  test "should update envio" do
    patch :update, id: @envio, envio: {  }
    assert_redirected_to envio_path(assigns(:envio))
  end

  test "should destroy envio" do
    assert_difference('Envio.count', -1) do
      delete :destroy, id: @envio
    end

    assert_redirected_to envios_path
  end
end
