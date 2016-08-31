require 'test_helper'

class TeamMembersControllerTest < ActionController::TestCase
  setup do
    @team_member = team_members(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:team_members)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create team_member" do
    assert_difference('TeamMember.count') do
      post :create, team_member: { bio: @team_member.bio, industry_experience: @team_member.industry_experience, name: @team_member.name, qualifications: @team_member.qualifications, teaching_experience: @team_member.teaching_experience }
    end

    assert_redirected_to team_member_path(assigns(:team_member))
  end

  test "should show team_member" do
    get :show, id: @team_member
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @team_member
    assert_response :success
  end

  test "should update team_member" do
    patch :update, id: @team_member, team_member: { bio: @team_member.bio, industry_experience: @team_member.industry_experience, name: @team_member.name, qualifications: @team_member.qualifications, teaching_experience: @team_member.teaching_experience }
    assert_redirected_to team_member_path(assigns(:team_member))
  end

  test "should destroy team_member" do
    assert_difference('TeamMember.count', -1) do
      delete :destroy, id: @team_member
    end

    assert_redirected_to team_members_path
  end
end
