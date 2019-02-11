class UsersController < ApplicationController
	layout 'app'
	
  def index
  	@users = User.confirmed
  end
end
