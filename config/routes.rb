Rails.application.routes.draw do

  get '/tenants', to: 'leases#index', as: 'tenants'
  devise_for :users, 
    :controllers => { :invitations => 'users/invitations', :registrations => 'registrations' }
  
  resources :users, only: [:show, :index] do
    member do
      get 'properties'
    end
  end

  resources :properties, except: [:edit] do 
    member do 
      get 'listing'
      get 'pricing'
      get 'description'
      get 'photo_upload'
      get 'amenities'
      get 'address'
      delete 'delete_photo/:photo_id', action: :delete_photo, as: :delete_photo
    end
    resources :leases, only: [:create, :destroy]
  end
  
  root 'home_page#index'
end
