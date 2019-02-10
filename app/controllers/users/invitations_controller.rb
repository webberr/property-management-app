module Users
	class InvitationsController < Devise::InvitationsController
   
	def update
	  self.resource = resource_class.accept_invitation!(
	    { 
	    	:password => params[:user][:password], 
	      :password_confirmation => params[:user][:password_confirmation],
	      :invitation_token => params[:user][:invitation_token],
	      :first_name => params[:user][:first_name],
	      :last_name => params[:user][:last_name],
	      :phone => params[:user][:phone],
	      :job => params[:user][:job]
	    }
	   )
	  # sign_in(resource_name, resource)
	  redirect_to new_user_session_path, :alert => "Welcome to PropertyManagement"
	end

   private
    def accept_resource
	    resource = resource_class.accept_invitation!(update_resource_params)
	    resource
  	end

	   def resource_params
	     params.permit(user: [:password, :invitation_token, :utf8, :authenticity_token, :password_confirmation, :first_name, :last_name, :email, :job, :phone])[:user]
	   end
	end
end