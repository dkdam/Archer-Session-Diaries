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
    redirect_to equipment_path
  end

  def show
    @equipment = Equipment.find params[:id]
    @blog = Blog.find params[:id]
    
  end

  def destroy
    equipments = Equipment.find params[:id]
    equipments.destroy
    redirect_to equipments_path
  end

  private
  def equipment_params
    params.require(:equipment).permit(:bow, :bow_type, :bow_size, :draw_length, :draw_weight, :string, :arrow, :arrow_length, :arrow_spine, :arrow_weight, :tip_weight, :fletching, :nock, :description)
  end
end
