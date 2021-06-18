class JobSeekersController < ApplicationController
  before_action :set_job_seeker, only: %i[ show edit update destroy ]

  # GET /job_seekers or /job_seekers.json
  def index
    @job_seekers = JobSeeker.all
  end

  # GET /job_seekers/1 or /job_seekers/1.json
  def show
  end

  # GET /job_seekers/new
  def new
    @job_seeker = JobSeeker.new
  end

  # GET /job_seekers/1/edit
  def edit
  end

  # POST /job_seekers or /job_seekers.json
  def create
    @job_seeker = JobSeeker.new(job_seeker_params)

    respond_to do |format|
      if @job_seeker.save
        format.html { redirect_to @job_seeker, notice: "Job seeker was successfully created." }
        format.json { render :show, status: :created, location: @job_seeker }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @job_seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /job_seekers/1 or /job_seekers/1.json
  def update
    respond_to do |format|
      if @job_seeker.update(job_seeker_params)
        format.html { redirect_to @job_seeker, notice: "Job seeker was successfully updated." }
        format.json { render :show, status: :ok, location: @job_seeker }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @job_seeker.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /job_seekers/1 or /job_seekers/1.json
  def destroy
    @job_seeker.destroy
    respond_to do |format|
      format.html { redirect_to job_seekers_url, notice: "Job seeker was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_job_seeker
      @job_seeker = JobSeeker.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def job_seeker_params
      params.require(:job_seeker).permit(:user_namer, :first_name, :last_name, :email)
    end
end
