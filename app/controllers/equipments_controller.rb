class EquipmentsController < ApplicationController
  before_action :check_for_login

  def index
    @equipments = Equipment.all
  end

  def new
    @equipment = Equipment.new
  end

  def create
    equipments = Equipment.create equipment_params
    @current_user.equipments << equipments # Give the new equipment to the current user
    redirect_to equipments_path # IRL redirect to equipment or somewhere
  end

  def edit
    @equipment = Equipment.find params[:id]
  end

  def update
    equipments = Equipment.find params[:id]
    equipments.update equipment_params
    redirect_to equipments_path
  end

  def show
    @equipment = Equipment.find params[:id]
  end

  def destroy
    equipments = Equipment.find params[:id]
    equipments.destroy
    redirect_to equipments_path
  end

  private
  def equipment_params
    params.require(:equipment).permit(:bow,:arrow)
  end
end
