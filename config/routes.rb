Rails.application.routes.draw do
  get 'users', to: 'users#index', as: "users"
  get 'dashboard', to: 'dashboard#home', as: 'dashboard'
  devise_for :users, skip: [:registrations, :sessions]
  as :user do
    get 'login', to: 'devise/sessions#new', as: :new_user_session
    post 'login', to: 'devise/sessions#create', as: :user_session_path
    delete 'logout', to: 'devise/sessions#destroy', as: :destroy_user_session
    get 'profile' => 'devise/registrations#edit', as: :edit_user_registration
    put 'users' => 'devise/registrations#update', :as => 'user_registration'
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
  end
  resources :leases, only: [:create, :destroy]
  root 'home_page#index'
end
