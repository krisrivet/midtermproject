require 'test_helper'

class SeasonStatsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @season_stat = season_stats(:one)
  end

  test "should get index" do
    get season_stats_url
    assert_response :success
  end

  test "should get new" do
    get new_season_stat_url
    assert_response :success
  end

  test "should create season_stat" do
    assert_difference('SeasonStat.count') do
      post season_stats_url, params: { season_stat: { age: @season_stat.age, average_assists: @season_stat.average_assists, average_blocks: @season_stat.average_blocks, average_minutes: @season_stat.average_minutes, average_personal_foul: @season_stat.average_personal_foul, average_points: @season_stat.average_points, average_rebounds: @season_stat.average_rebounds, average_steals: @season_stat.average_steals, average_turnover: @season_stat.average_turnover, field_goal_percentage: @season_stat.field_goal_percentage, free_throw_percentage: @season_stat.free_throw_percentage, games_played: @season_stat.games_played, player_name: @season_stat.player_name, team: @season_stat.team, three_point_percentage: @season_stat.three_point_percentage, year: @season_stat.year } }
    end

    assert_redirected_to season_stat_url(SeasonStat.last)
  end

  test "should show season_stat" do
    get season_stat_url(@season_stat)
    assert_response :success
  end

  test "should get edit" do
    get edit_season_stat_url(@season_stat)
    assert_response :success
  end

  test "should update season_stat" do
    patch season_stat_url(@season_stat), params: { season_stat: { age: @season_stat.age, average_assists: @season_stat.average_assists, average_blocks: @season_stat.average_blocks, average_minutes: @season_stat.average_minutes, average_personal_foul: @season_stat.average_personal_foul, average_points: @season_stat.average_points, average_rebounds: @season_stat.average_rebounds, average_steals: @season_stat.average_steals, average_turnover: @season_stat.average_turnover, field_goal_percentage: @season_stat.field_goal_percentage, free_throw_percentage: @season_stat.free_throw_percentage, games_played: @season_stat.games_played, player_name: @season_stat.player_name, team: @season_stat.team, three_point_percentage: @season_stat.three_point_percentage, year: @season_stat.year } }
    assert_redirected_to season_stat_url(@season_stat)
  end

  test "should destroy season_stat" do
    assert_difference('SeasonStat.count', -1) do
      delete season_stat_url(@season_stat)
    end

    assert_redirected_to season_stats_url
  end
end
