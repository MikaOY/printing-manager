
class JobsController < ApplicationController
  #app/controllers/jobs_controller.rb
  skip_before_action :verify_authenticity_token
  before_action :find_job, only: [:edit, :update, :show, :destroy]

  # Index action to render all print jobs
  def index
    @jobs = Job.all
  end

  # New action for creating print job
  def new
    @job = Job.new
  end

  # Create action saves the print job into database
  def create
    # render json: params
    @job = Job.new(job_params)
    if @job.save
      flash[:notice] = "Successfully created print job!"
      redirect_to :action => 'index' 
    else
      flash[:alert] = "Error creating new print job!"
      render :action => 'index'
    end
  end

  # Edit action retrives the print job and renders the edit page
  def edit
  end

  # Update action updates the print job with the new information
  def update
    if @job.update_attributes(job_params)
      flash[:notice] = "Successfully updated print job!"
      redirect_to @job
    else
      flash[:alert] = "Error updating print job!"
      render :edit
    end
  end

  # The show action renders the individual print job after retrieving the the id
  def show
  end

  # The destroy action removes the print job permanently from the database
  def destroy
    if @job.destroy
      flash[:notice] = "Successfully deleted print job!"
    else
      flash[:alert] = "Error updating print job!"
    end
  end

  private

  def job_params
    params.require(:job).permit(:filament_id, :usedWeight, :doneTime, :printer_id, :reference)
  end

  def find_job
    @job = Job.find(params[:id])
  end
end
