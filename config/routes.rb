Rails.application.routes.draw do
  devise_for :users
  get 'home_page/index'
  root 'home_page#index'
end
