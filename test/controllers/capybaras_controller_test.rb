require 'test_helper'

class CapybarasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @capybara = capybaras(:one)
  end

  test "should get index" do
    get capybaras_url
    assert_response :success
  end

  test "should get new" do
    get new_capybara_url
    assert_response :success
  end

  test "should create capybara" do
    assert_difference('Capybara.count') do
      post capybaras_url, params: { capybara: {  } }
    end

    assert_redirected_to capybara_url(Capybara.last)
  end

  test "should show capybara" do
    get capybara_url(@capybara)
    assert_response :success
  end

  test "should get edit" do
    get edit_capybara_url(@capybara)
    assert_response :success
  end

  test "should update capybara" do
    patch capybara_url(@capybara), params: { capybara: {  } }
    assert_redirected_to capybara_url(@capybara)
  end

  test "should destroy capybara" do
    assert_difference('Capybara.count', -1) do
      delete capybara_url(@capybara)
    end

    assert_redirected_to capybaras_url
  end
end
