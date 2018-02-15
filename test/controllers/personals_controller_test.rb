require 'test_helper'

class PersonalsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @personal = personals(:one)
  end

  test "should get index" do
    get personals_url
    assert_response :success
  end

  test "should get new" do
    get new_personal_url
    assert_response :success
  end

  test "should create personal" do
    assert_difference('Personal.count') do
      post personals_url, params: { personal: { age: @personal.age, average_assists: @personal.average_assists, average_blocks: @personal.average_blocks, average_personal_foul: @personal.average_personal_foul, average_points: @personal.average_points, average_rebounds: @personal.average_rebounds, average_steals: @personal.average_steals, average_turnover: @personal.average_turnover, college: @personal.college, player_name: @personal.player_name, team: @personal.team } }
    end

    assert_redirected_to personal_url(Personal.last)
  end

  test "should show personal" do
    get personal_url(@personal)
    assert_response :success
  end

  test "should get edit" do
    get edit_personal_url(@personal)
    assert_response :success
  end

  test "should update personal" do
    patch personal_url(@personal), params: { personal: { age: @personal.age, average_assists: @personal.average_assists, average_blocks: @personal.average_blocks, average_personal_foul: @personal.average_personal_foul, average_points: @personal.average_points, average_rebounds: @personal.average_rebounds, average_steals: @personal.average_steals, average_turnover: @personal.average_turnover, college: @personal.college, player_name: @personal.player_name, team: @personal.team } }
    assert_redirected_to personal_url(@personal)
  end

  test "should destroy personal" do
    assert_difference('Personal.count', -1) do
      delete personal_url(@personal)
    end

    assert_redirected_to personals_url
  end
end
