class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  before_action :authenticate_user!
  before_action :registrate_user_description!

  protected
  	def registrate_user_description!
  		if user_signed_in? && current_user.user_description.blank?
  			redirect_to new_user_description_path
  		end 
  	end
end
