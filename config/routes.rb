MichaelaRecipes::Application.routes.draw do


  devise_for :users, :path => '', :path_names => {:sign_in => 'login', :sign_out => 'logout'}

  resources :users do
    resources :recipes
  end


  # The priority is based upon order of creation:
  # first created -> highest priority.

  devise_scope :user do 
    root :to => 'devise/sessions#new'
    match '/logout' => 'devise/sessions#destroy'
  end


  namespace :api do
    resources :recipes
  end
end


