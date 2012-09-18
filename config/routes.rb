Rails.application.routes.draw do
  resources :comments, :only => [:new, :create, :edit, :update, :destroy]
end
