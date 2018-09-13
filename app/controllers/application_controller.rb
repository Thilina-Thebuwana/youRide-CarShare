class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  
  def authorize_admin
     redirect_to root_path, alert: 'You dont have access to that page' unless current_user.try(:admin?)
  	 end
    
  def authorize_user_booking
     redirect_to new_user_session_path, alert: 'You must login in order to make a booking ' unless current_user
  	 end
protected
 

end
