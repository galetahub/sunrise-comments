Rails.application.routes.draw do
  resources :comments, :only => [:new, :create, :edit, :update, :destroy]  
  
  namespace :manage do
    resources :comments
  end
end
