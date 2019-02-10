Rails.application.routes.draw do
  get 'admin_user/index'
  get 'admin_user/show'
  get 'admin_user/delete'
  devise_for :users, :controllers => { :invitations => 'users/invitations' }
  root 'home_page#index'
end
