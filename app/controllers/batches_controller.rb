class BatchesController < ApplicationController
  before_action :set_batch, only: [:show, :edit, :update, :destroy]

  # GET /batches
  # GET /batches.json
  def index
    @batches = Batch.all
    respond_to do |format|
      format.html {}
      format.json {

        data = Hash.new
        data["batches"] = @batches
        return_success_response(data, "Request Successful", 200)
      }
    end
  end

  # GET /batches/1
  # GET /batches/1.json
  def show
    respond_to do |format|
      format.html {}
      format.json {

        data = Hash.new
        data["batch"] = @batch
        return_success_response(data, "Request Successful", 200)
      }
    end
  end

  # GET /batches/new
  def new
    @batch = Batch.new
  end

  # GET /batches/1/edit
  def edit
  end

  # POST /batches
  # POST /batches.json
  def create
    @batch = Batch.new(batch_params)
    team_member_ids = params[:team_member_ids]


    respond_to do |format|
      if @batch.save
        format.html { redirect_to @batch, notice: 'Batch was successfully created.' }
        format.json { render :show, status: :created, location: @batch }
      else
        format.html { render :new }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /batches/1
  # PATCH/PUT /batches/1.json
  def update
    respond_to do |format|
      if @batch.update(batch_params)
        format.html { redirect_to @batch, notice: 'Batch was successfully updated.' }
        format.json { render :show, status: :ok, location: @batch }
      else
        format.html { render :edit }
        format.json { render json: @batch.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /batches/1
  # DELETE /batches/1.json
  def destroy
    @batch.destroy
    respond_to do |format|
      format.html { redirect_to batches_url, notice: 'Batch was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_batch
      begin
      @batch = Batch.find(params[:id])
      rescue Exception =>  e
        return return_error_response(e.exception.to_s,404)
      end

    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def batch_params
      params.require(:batch).permit(:course_id, :name, :price, :start_date, :schedule, :strength, :status ,:team_member_ids => [])
    end
end
