Rails.application.routes.draw do
  get 'admin_user/index'
  get 'admin_user/show'
  get 'admin_user/delete'
  devise_for :users
  root 'home_page#index'
end
