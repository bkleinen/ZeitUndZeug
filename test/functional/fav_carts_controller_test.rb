require 'test_helper'

class FavCartsControllerTest < ActionController::TestCase
  setup do
    @fav_cart = fav_carts(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:fav_carts)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create fav_cart" do
    assert_difference('FavCart.count') do
      post :create, fav_cart: {  }
    end

    assert_redirected_to fav_cart_path(assigns(:fav_cart))
  end

  test "should show fav_cart" do
    get :show, id: @fav_cart
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @fav_cart
    assert_response :success
  end

  test "should update fav_cart" do
    put :update, id: @fav_cart, fav_cart: {  }
    assert_redirected_to fav_cart_path(assigns(:fav_cart))
  end

  test "should destroy fav_cart" do
    assert_difference('FavCart.count', -1) do
      delete :destroy, id: @fav_cart
    end

    assert_redirected_to fav_carts_path
  end
end
