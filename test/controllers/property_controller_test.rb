require 'test_helper'

class PropertyControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get property_index_url
    assert_response :success
  end

  test "should get new" do
    get property_new_url
    assert_response :success
  end

  test "should get create" do
    get property_create_url
    assert_response :success
  end

  test "should get pricing" do
    get property_pricing_url
    assert_response :success
  end

  test "should get description" do
    get property_description_url
    assert_response :success
  end

  test "should get photo_upload" do
    get property_photo_upload_url
    assert_response :success
  end

  test "should get amenities" do
    get property_amenities_url
    assert_response :success
  end

  test "should get address" do
    get property_address_url
    assert_response :success
  end

  test "should get update" do
    get property_update_url
    assert_response :success
  end

  test "should get destroy" do
    get property_destroy_url
    assert_response :success
  end

  test "should get property_type" do
    get property_property_type_url
    assert_response :success
  end

  test "should get listing" do
    get property_listing_url
    assert_response :success
  end

end
