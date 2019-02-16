class LeasesController < ApplicationController
	before_action :authenticate_user!
  layout 'app'
  def index
    @leases = Lease.all
  end

  def create  	
    # create user with email and send them invitation
    property = Property.find(params[:property_id])
    user = User.invite!(:email => params[:email], role: 'tenant')
  	# start_date = Date.parse(lease_params[:start_date])
  	# end_date = Date.parse(lease_params[:end_date])
    Lease.create!(lease_params.merge!(user: user, property: property))
    redirect_to dashboard_path
  end

  def destroy
  end

  private
  	def lease_params
  		params.require(:lease).permit(:start_date, :end_date)
  	end
end
