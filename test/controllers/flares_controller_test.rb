require 'test_helper'

class FlaresControllerTest < ActionDispatch::IntegrationTest
  setup do
    @flare = flares(:one)
  end

  test "should get index" do
    get flares_url
    assert_response :success
  end

  test "should get new" do
    get new_flare_url
    assert_response :success
  end

  test "should create flare" do
    assert_difference('Flare.count') do
      post flares_url, params: { flare: { description: @flare.description, game: @flare.game, platform_id: @flare.platform_id, region_id: @flare.region_id, user_id: @flare.user_id } }
    end

    assert_redirected_to flare_url(Flare.last)
  end

  test "should show flare" do
    get flare_url(@flare)
    assert_response :success
  end

  test "should get edit" do
    get edit_flare_url(@flare)
    assert_response :success
  end

  test "should update flare" do
    patch flare_url(@flare), params: { flare: { description: @flare.description, game: @flare.game, platform_id: @flare.platform_id, region_id: @flare.region_id, user_id: @flare.user_id } }
    assert_redirected_to flare_url(@flare)
  end

  test "should destroy flare" do
    assert_difference('Flare.count', -1) do
      delete flare_url(@flare)
    end

    assert_redirected_to flares_url
  end
end
