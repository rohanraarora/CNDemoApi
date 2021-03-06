class TeamMembersController < ApplicationController
  before_action :set_team_member, only: [:show, :edit, :update, :destroy]

  # GET /team_members
  # GET /team_members.json
  def index
    @team_members = TeamMember.all
    respond_to do |format|
      format.html {}
      format.json {

        members = @team_members
        data = Hash.new
        data["team_members"] = members
        return_success_response(data, "Request Successful", 200)
      }
    end
  end

  # GET /team_members/1
  # GET /team_members/1.json
  def show
    if (@team_member.blank?)
      return return_error_response('Team Member Not Found', 404)
    end
    respond_to do |format|
      format.html {}
      format.json {
        data = Hash.new
        data["team_member"] = @team_member
        return_success_response(data, "Request Successful", 200)
      }
    end
  end

  # GET /team_members/new
  def new
    @team_member = TeamMember.new
  end

  # GET /team_members/1/edit
  def edit
  end

  # POST /team_members
  # POST /team_members.json
  def create
    @team_member = TeamMember.new(team_member_params)

    respond_to do |format|
      if @team_member.save
        format.html { redirect_to @team_member, notice: 'Team member was successfully created.' }
        format.json { render :show, status: :created, location: @team_member }
      else
        format.html { render :new }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /team_members/1
  # PATCH/PUT /team_members/1.json
  def update
    respond_to do |format|
      if @team_member.update(team_member_params)
        format.html { redirect_to @team_member, notice: 'Team member was successfully updated.' }
        format.json { render :show, status: :ok, location: @team_member }
      else
        format.html { render :edit }
        format.json { render json: @team_member.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /team_members/1
  # DELETE /team_members/1.json
  def destroy
    @team_member.destroy
    respond_to do |format|
      format.html { redirect_to team_members_url, notice: 'Team member was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_team_member
      begin
       @team_member = TeamMember.find(params[:id])
      rescue Exception =>  e
        return return_error_response(e.exception.to_s,404)
      end
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def team_member_params
      params.require(:team_member).permit(:name, :bio, :qualifications, :teaching_experience, :industry_experience, :profile_pic)
    end
end
