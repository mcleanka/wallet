require "test_helper"

class IncomeSourcesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @income_source = income_sources(:one)
  end

  test "should get index" do
    get income_sources_url
    assert_response :success
  end

  test "should get new" do
    get new_income_source_url
    assert_response :success
  end

  test "should create income_source" do
    assert_difference("IncomeSource.count") do
      post income_sources_url, params: { income_source: { description: @income_source.description, name: @income_source.name } }
    end

    assert_redirected_to income_source_url(IncomeSource.last)
  end

  test "should show income_source" do
    get income_source_url(@income_source)
    assert_response :success
  end

  test "should get edit" do
    get edit_income_source_url(@income_source)
    assert_response :success
  end

  test "should update income_source" do
    patch income_source_url(@income_source), params: { income_source: { description: @income_source.description, name: @income_source.name } }
    assert_redirected_to income_source_url(@income_source)
  end

  test "should destroy income_source" do
    assert_difference("IncomeSource.count", -1) do
      delete income_source_url(@income_source)
    end

    assert_redirected_to income_sources_url
  end
end
