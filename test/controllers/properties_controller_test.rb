require 'test_helper'

class PropertiesControllerTest < ActionDispatch::IntegrationTest
  test "should get index" do
    get properties_index_url
    assert_response :success
  end

  test "should get new" do
    get properties_new_url
    assert_response :success
  end

  test "should get create" do
    get properties_create_url
    assert_response :success
  end

  test "should get pricing" do
    get properties_pricing_url
    assert_response :success
  end

  test "should get description" do
    get properties_description_url
    assert_response :success
  end

  test "should get photo_upload" do
    get properties_photo_upload_url
    assert_response :success
  end

  test "should get amenities" do
    get properties_amenities_url
    assert_response :success
  end

  test "should get address" do
    get properties_address_url
    assert_response :success
  end

  test "should get update" do
    get properties_update_url
    assert_response :success
  end

  test "should get destroy" do
    get properties_destroy_url
    assert_response :success
  end

  test "should get property_type" do
    get properties_property_type_url
    assert_response :success
  end

  test "should get listing" do
    get properties_listing_url
    assert_response :success
  end

end
