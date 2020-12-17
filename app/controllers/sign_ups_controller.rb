class SignUpsController < ApplicationController
  def new 
    @sign_up = SignUp.new

    @activities = Activity.all
    @campers = Camper.all
    
    # render :new
  end

  def create 
    sign_up = SignUp.create(sign_up_params)

    if sign_up.valid? 
      redirect_to camper_path(sign_up.camper)
    else
      flash[:my_errors] = sign_up.errors.full_messages
      redirect_to new_sign_up_path
    end 

  end 

  private 

  def sign_up_params
    params.require(:sign_up).permit(:time, :camper_id, :activity_id)
  end 
end

# params = {sign_up: {time: 4, camper_id: 6, activity_id: 9}}
# params.require(:sign_up).permit(:time, :camper_id, :activity_id)

# params = {time: 4, camper_id: 6, activity_id: 9}
# params.permit(:time, :camper_id, :activity_id)

# params = {sign_up: {test: {time: 4, camper_id: 6, activity_id: 9}}}
# params.require(:sign_up).require(:test).permit(:time, :camper_id, :activity_id)