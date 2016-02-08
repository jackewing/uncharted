class PatientsController < ApplicationController
  def index
  	@patients = Patient.all.order(updated_at: :desc)
  end

  def show
  	@patient =  Patient.find(params[:id])
  	@observation_set = @patient.observation_set
  end
end
