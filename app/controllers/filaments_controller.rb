
class FilamentsController < ApplicationController
  #app/controllers/filaments_controller.rb
  skip_before_action :verify_authenticity_token
  before_action :find_filament, only: [:edit, :update, :show, :destroy]

  # Index action to render all filaments
  def index
    @filaments = Filament.all
  end

  # New action for creating filament
  def new
    @filament = Filament.new
  end

  # Create action saves the filament into database
  def create
    @filament = Filament.new(filament_params)
    if @filament.save
      flash[:notice] = "Successfully created filament!"
      redirect_to jobs_path
    else
      flash[:alert] = "Error creating new filament!"
      render :new
    end
  end

  # Edit action retrives the filament and renders the edit page
  def edit
  end

  # Update action updates the filament with the new information
  def update
    if @filament.update_attributes(filament_params)
      flash[:notice] = "Successfully updated filament!"
      redirect_to jobs_path
    else
      flash[:alert] = "Error updating filament!"
      render :edit
    end
  end

  # The show action renders the individual filament after retrieving the the id
  def show
  end

  # The destroy action removes the filament permanently from the database
  def destroy
    if @filament.destroy
      flash[:notice] = "Successfully deleted filament!"
      redirect_to jobs_path
    else
      flash[:alert] = "Error updating filament!"
    end
  end

  private

  def filament_params
    params.require(:filament).permit(:color, :brand, :full_weight, :material)
  end

  def find_filament
    @filament = Filament.find(params[:id])
  end
end
