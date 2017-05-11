class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?

  def after_sign_in_path_for(resource_or_scope)
 	edit_user_registration_path
  end

  protected
  	def configure_permitted_parameters
    	added_attrs = [:id, :role_id, :email, :password, :password_confirmation, :remember_me, :nom, :facebook, :twitter, :instagram, :description, :adresse, :phone]
    	devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
    	devise_parameter_sanitizer.permit :account_update, keys: added_attrs
  	end
end