InstaApi::Application.routes.draw do

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)
  namespace :api, defaults: {format: :json} do
    resources :posts
    get '/random_post' => 'posts#random_post'
  end

end
