
class PrintersController < ApplicationController
	#app/controllers/printers_controller.rb
  skip_before_action :verify_authenticity_token
  before_action :find_printer, only: [:edit, :update, :show, :destroy]

  # Index action to render all printers
  def index
    @printers = Printer.all
  end

  # New action for creating printer
  def new
    @printer = Printer.new
  end

  # Create action saves the printer into database
  def create
    @printer = Printer.new(printer_params)
    if @printer.save
      flash[:notice] = "Successfully created printer!"
      redirect_to @printer 
    else
      flash[:alert] = "Error creating new printer!"
      render :new
    end
  end

  # Edit action retrives the printer and renders the edit page
  def edit
  end

  # Update action updates the printer with the new information
  def update
    if @printer.update_attributes(printer_params)
      flash[:notice] = "Successfully updated printer!"
      redirect_to @printer
    else
      flash[:alert] = "Error updating printer!"
      render :edit
    end
  end

  # The show action renders the individual printer after retrieving the the id
  def show
  end

  # The destroy action removes the printer permanently from the database
  def destroy
    if @printer.destroy
      flash[:notice] = "Successfully deleted printer!"
    else
      flash[:alert] = "Error updating printer!"
    end
  end

  private

  def printer_params
    params.require(:printer).permit(:name, :startupCost)
  end

  def find_printer
    @printer = Printer.find(params[:id])
  end
end
