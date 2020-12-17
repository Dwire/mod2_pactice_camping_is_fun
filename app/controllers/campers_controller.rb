class CampersController < ApplicationController
  def index
    @campers = Camper.all
  end

  def show
    @camper = Camper.find(params[:id]) 
  end 

  def destroy 
    @camper = Camper.find(params[:id])
    @camper.destroy 

    redirect_to campers_path
  end 

end
