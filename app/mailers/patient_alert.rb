class PatientAlert < ApplicationMailer
	def  user_alert(alert)
		@user = alert[:user]
		@alert = alert
	    @url  = 'http://healthuncharted.co/chart'
	    mail(to: @user.email, subject: "Patient "+alert[:patient_name]+" "+alert[:patient_state] )
	end
end
