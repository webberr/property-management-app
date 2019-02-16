class LeasesController < ApplicationController
	before_action :authenticate_user!

  def create
  	property = Property.find(params[:property_id])
  	start_date = Date.parse(lease_params[:start_date])
  	end_date = Date.parse(lease_params[:end_date])
  end

  def destroy
  end

  private
  	def lease_params
  		params.require(:lease).permit(:start_date, :end_date)
  	end
end
