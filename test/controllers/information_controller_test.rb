require 'test_helper'

class InformationControllerTest < ActionDispatch::IntegrationTest
  setup do
    @information = information(:one)
  end

  test "should get index" do
    get information_index_url
    assert_response :success
  end

  test "should get new" do
    get new_informations_url
    assert_response :success
  end

  test "should create information" do
    assert_difference('Information.count') do
      post information_index_url, params: {information: {address: @information.address, name: @information.name, phone: @information.phone } }
    end

    assert_redirected_to informations_url(Information.last)
  end

  test "should show information" do
    get informations_url(@information)
    assert_response :success
  end

  test "should get edit" do
    get edit_informations_url(@information)
    assert_response :success
  end

  test "should update information" do
    patch informations_url(@information), params: {information: {address: @information.address, name: @information.name, phone: @information.phone } }
    assert_redirected_to informations_url(@information)
  end

  test "should destroy information" do
    assert_difference('Information.count', -1) do
      delete informations_url(@information)
    end

    assert_redirected_to information_index_url
  end
end
