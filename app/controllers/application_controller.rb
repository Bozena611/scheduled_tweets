class ApplicationController < ActionController::Base
	before_action :set_current_user
	
	def set_current_user
		if session[:user_id]
			# User.find(session[:user_id]) throws error if user does not exist
			# so we use code below with find_by
			Current.user = User.find_by(id: session[:user_id])
		end
	end
end
