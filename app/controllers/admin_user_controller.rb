class AdminUserController < ApplicationController
	layout 'app'

  def index
  	@users = User.confirmed
  end

  def show
  end
end
