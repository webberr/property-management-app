Rails.application.routes.draw do
  get 'users', to: 'users#index', as: "users"
  get 'dashboard', to: 'dashboard#home', as: 'dashboard'
  devise_for :users,
  						path: '',
  					 	controllers: { :invitations => 'users/invitations' },
  					 	path_names: { sign_in: 'login', sign_out: 'logout', edit: 'profile'}
  root 'home_page#index'
  resources :properties, except: [:edit] do 
    member do 
      get 'pricing'
      get 'description'
      get 'photo_upload'
      get 'amenities'
      get 'address'
      get 'property_type'
      get 'listing'
    end
  end
end
