class LeasesController < ApplicationController
  layout 'app'
  before_action :authenticate_user!
  before_action :is_authorised?, only: [:index, :create, :destroy]

  def index
    @leases = Lease.all
  end

  def create
    property = Property.find(params[:property_id])

    if current_user == property.user_id
      flash[:danger] = "You cannot lease your own property to yourself."
    else
      # create user with email and send them invitation
      user = User.invite!(:email => params[:email], role: 'tenant')

    	start_date = Date.parse(lease_params[:start_date])
      end_date = Date.parse(lease_params[:end_date])

      Lease.create!(lease_params.merge!(user: user, property: property))
    end
    redirect_back(fallback_location: request.referer)
  end

  def destroy
  end

  private
  	def lease_params
  		params.require(:lease).permit(:start_date, :end_date)
  	end

    def is_authorised?
      if !(current_user.is_admin? || current_user.is_staff?)
        flash[:danger] = "You are not authorised to perform this action"
        redirect_back(fallback_location: request.referer)
      end
    end
end
