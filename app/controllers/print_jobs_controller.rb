
class PrintJobsController < ApplicationController
  #app/controllers/print_jobs_controller.rb
  skip_before_action :verify_authenticity_token
  before_action :find_print_job, only: [:edit, :update, :show, :destroy]

  # Index action to render all print jobs
  def index
    @print_jobs = PrintJob.all
  end

  # New action for creating print job
  def new
    @print_job = PrintJob.new
  end

  # Create action saves the print job into database
  def create
    @print_job = PrintJob.new(print_job_params)
    if @print_job.save
      flash[:notice] = "Successfully created print job!"
      redirect_to @print_job 
    else
      flash[:alert] = "Error creating new print job!"
      render :new
    end
  end

  # Edit action retrives the print job and renders the edit page
  def edit
  end

  # Update action updates the print job with the new information
  def update
    if @print_job.update_attributes(print_job_params)
      flash[:notice] = "Successfully updated print job!"
      redirect_to @print_job
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
    if @print_job.destroy
      flash[:notice] = "Successfully deleted print job!"
    else
      flash[:alert] = "Error updating print job!"
    end
  end

  private

  def print_job_params
    params.require(:print_job).permit(:filament_id, :usedWeight, :doneTime, :printer_id, :reference)
  end

  def find_print_job
    @print_job = PrintJob.find(params[:id])
  end
end
