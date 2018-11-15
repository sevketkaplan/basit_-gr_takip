class ApplicationController < ActionController::Base
	before_action :authenticate_user!
	before_action :configure_permitted_parameters, if: :devise_controller?

	def after_sign_in_path_for(resource)

		if current_user.ogrenci? 
			ogrenci_path(current_user.ogrid)
		elsif current_user.ogretmen?
			ogretman_path(current_user.ogrid)
		else 
			root_path
		end 


	end
	def after_sign_out_path_for(resource)
		new_user_session_path

	end
	protected

	def configure_permitted_parameters
		added_attrs = [:username, :email, :password, :password_confirmation, :remember_me, :role, :ogrid]
		devise_parameter_sanitizer.permit :sign_up, keys: added_attrs
		devise_parameter_sanitizer.permit :account_update, keys: added_attrs
	end

end
