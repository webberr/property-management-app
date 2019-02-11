class DashboardController < ApplicationController
	layout 'app'
	before_action :authenticate_user!

  def home
  	
  end
end
