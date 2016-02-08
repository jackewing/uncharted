class ChartsController < ApplicationController

  def index
    @patients = Patient.all
  end

  def show
    @patient = Patient.where(id: params[:id]).first
    @observation_set = @patient.observation_sets
  end

  def create
    
  end
  def new
    
  end


end
