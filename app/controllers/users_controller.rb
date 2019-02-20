class UsersController < ApplicationController
	layout 'app'
	before_action :authenticate_user!
	before_action :set_user, except: [:index]

  def index
  	@users = User.all
  end

  def show
  end

  def properties
  	@properties = current_user.properties
  end

  private
  	def set_user
  		current_user
  	end
end
