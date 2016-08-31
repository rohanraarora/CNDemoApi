class SocialProfilesController < ApplicationController

  def create
    @team_member = TeamMember.find(params[:team_member_id])
    @social_profile = @team_member.social_profiles.create(social_profile_params)
    redirect_to team_member_path(@team_member)
  end

  def destroy
    @team_member = TeamMember.find(params[:team_member_id])
    @sp = @team_member.social_profiles.find(params[:id])
    @sp.destroy
    redirect_to team_member_path(@team_member)
  end

  def social_profile_params
    params.require(:social_profile).permit(:label, :url)
  end

end
