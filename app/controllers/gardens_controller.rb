class GardensController < ApplicationController
  before_action :authenticate_user!, only: :create # obrigar a ter um
  # usuario logado quando ele for criar um garden

  def index
    @gardens = Garden.all
  end

  def new
    @garden = Garden.new
  end

  def create
    @garden = current_user.gardens.build(garden_params)
    @garden.save
    redirect_to gardens_path
  end

  def show
    @garden = Garden.find(params[:id])
  end

  def destroy
    @garden = Garden.find(params[:id])
    @garden.destroy
    redirect_to gardens_path
  end

  private

  def garden_params
    params.require(:garden).permit(:name)
  end
end
