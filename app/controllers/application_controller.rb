class ApplicationController < ActionController::Base
	layout :layout_by_resource
  before_action :configure_permitted_params, if: :devise_controller?

  def after_sign_in_path_for(resource)
		dashboard_path
	end

	protected
		def layout_by_resource
			# if devise_controller? && resource_name == :user && action_name == 'new'
			if devise_controller? && resource_name == :user
				"app"
			else
				"application"
			end
		end

		def configure_permitted_params
			devise_parameter_sanitizer.permit(:sign_up) do |u| 
				u.permit(:first_name, :last_name, :email, :password, :phone, :job)
			end

      devise_parameter_sanitizer.permit(:account_update) do |u|
      	u.permit(:email, :password, :current_password, :first_name, :last_name, :phone, :job)
      end
		end
end
