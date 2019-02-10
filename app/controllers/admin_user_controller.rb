class AdminUserController < ApplicationController
	layout 'app'

  def index
  	@users = User.all
  end

  def show
  end
end
