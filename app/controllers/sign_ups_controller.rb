class SignUpsController < ApplicationController
  def index
    
  end

  def new 
    @sign_up = SignUp.new
  end

  def create 
    sign_up = SignUp.create(sign_up_params)
    redirect_to camper_path(sign_up.camper)
  end

  private 

  def sign_up_params
    params.require(:sign_up).permit!
  end
end