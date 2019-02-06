class ApplicationController < ActionController::Base
	layout :layout_by_resource

	protected
		def layout_by_resource
			if devise_controller? && resource_name == :user && action_name == 'new'
				"app"
			else
				"application"
			end
		end
end
