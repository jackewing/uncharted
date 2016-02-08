class AlertsController < ApplicationController
	def index

		
	end
	def show
		@alert_score = params[:id].to_i
	end
end
