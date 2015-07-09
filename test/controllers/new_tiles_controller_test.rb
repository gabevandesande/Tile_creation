require 'test_helper'

class NewTilesControllerTest < ActionController::TestCase
  setup do
    @new_tile = new_tiles(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:new_tiles)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create new_tile" do
    assert_difference('NewTile.count') do
      post :create, new_tile: { original_image: @new_tile.original_image, output_image: @new_tile.output_image, text_input: @new_tile.text_input }
    end

    assert_redirected_to new_tile_path(assigns(:new_tile))
  end

  test "should show new_tile" do
    get :show, id: @new_tile
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @new_tile
    assert_response :success
  end

  test "should update new_tile" do
    patch :update, id: @new_tile, new_tile: { original_image: @new_tile.original_image, output_image: @new_tile.output_image, text_input: @new_tile.text_input }
    assert_redirected_to new_tile_path(assigns(:new_tile))
  end

  test "should destroy new_tile" do
    assert_difference('NewTile.count', -1) do
      delete :destroy, id: @new_tile
    end

    assert_redirected_to new_tiles_path
  end
end
