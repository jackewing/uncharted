class ObservationSetsController < ApplicationController
  def new
  	@patient = Patient.find(params[:patient_id])
  	@observation_set = @patient.observation_sets.new

  end
  def create
  	@patient = Patient.find(params[:patient_id])
  	params[:user_id]=current_user.id
  	@observation_set = @patient.observation_sets.create(observations_params)

  	if @observation_set.ews > 5 
	  	redirect_to "/alerts/"+@observation_set.ews.to_s
  	else
    	redirect_to patients_path
    end
  end
  private
  def observations_params
  	params.require(:observation_set).permit(:respiratory_rate, 
  		:supplemental_o2, 
  		:o2_saturation,
  		:temperature,
  		:blood_pressure_max,
  		:blood_pressure_min,
  		:blood_pressure_comment,
  		:heart_rate,
  		:pain_level,
  		:level_of_consciousness,
  		:urine_output_greater_than_1000ml,
  		:patient_id,
  		:user_id)
  end
end
