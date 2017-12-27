Rails.application.routes.draw do

  resources :guardian_details
  resources :students


namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
      resources :users
    resources :guardian_details
  resources :students
    end
  end

  resources :users

  root to: 'users#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
