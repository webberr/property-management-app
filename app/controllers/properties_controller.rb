class PropertiesController < ApplicationController
  layout 'app'
  before_action :set_property, except: [:index, :new, :create]
  before_action :authenticate_user!, except: [:show]
  
  def index
    @properties = Property.all
  end

  def new
    @property = current_user.properties.build
  end

  def create
    @property = current_user.properties.build(property_params)
    if @property.save
      flash[:success] = "New property listing has been created"
      redirect_to listing_property_path(@property)
    else
      flash.now[:danger] = "Oops!, something went wrong."
      render :new 
    end
  end

  def show
  end

  def pricing
    @property = Property.find(params[:id])
  end

  def description
  end

  def photo_upload
  end

  def amenities
  end

  def address
  end

  def update
    if @property.update(property_params)
      flash[:success] = "Property details have been updated..."
    else
      flash.now[:danger] = "Oops!, something went wrong..."
    end
    redirect_back(fallback_location: request.referer)
  end

  def destroy
  end

  def property_type
  end

  def listing
  end

  private
    def set_property
      @property = Property.find(params[:id])
    end

    def property_params
      params.require(:property).permit(:title, :description, :address, :active, :bedroom, :bathroom, :is_tv, :is_air, :is_kitchen, :is_pool, :is_heating, :is_internet, :size, :price)
    end
end