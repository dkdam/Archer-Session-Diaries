class EquipmentsController < ApplicationController
  before_action :check_for_login

  def index
  end

  def new
    @equipment = Equipment.new
  end

  def create
    equipment = Equipment.create equipment_params
    @current_user.equipment << equipment # Give the new equipment to the current user
    redirect_to root_path # IRL redirect to equipment or somewhere
  end

  def edit
  end

  def update
  end

  def show
  end

  def destroy
  end

  private
  def equipment_params
    params.require(:equipment).permit(:bow,:arrow)
  end
end
