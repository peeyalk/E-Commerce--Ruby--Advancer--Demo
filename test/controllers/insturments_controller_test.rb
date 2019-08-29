require 'test_helper'

class InsturmentsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @insturment = insturments(:one)
  end

  test "should get index" do
    get insturments_url
    assert_response :success
  end

  test "should get new" do
    get new_insturment_url
    assert_response :success
  end

  test "should create insturment" do
    assert_difference('Insturment.count') do
      post insturments_url, params: { insturment: { brand: @insturment.brand, condition: @insturment.condition, description: @insturment.description, finish: @insturment.finish, model: @insturment.model, price: @insturment.price, title: @insturment.title } }
    end

    assert_redirected_to insturment_url(Insturment.last)
  end

  test "should show insturment" do
    get insturment_url(@insturment)
    assert_response :success
  end

  test "should get edit" do
    get edit_insturment_url(@insturment)
    assert_response :success
  end

  test "should update insturment" do
    patch insturment_url(@insturment), params: { insturment: { brand: @insturment.brand, condition: @insturment.condition, description: @insturment.description, finish: @insturment.finish, model: @insturment.model, price: @insturment.price, title: @insturment.title } }
    assert_redirected_to insturment_url(@insturment)
  end

  test "should destroy insturment" do
    assert_difference('Insturment.count', -1) do
      delete insturment_url(@insturment)
    end

    assert_redirected_to insturments_url
  end
end
