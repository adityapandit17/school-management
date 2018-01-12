Rails.application.routes.draw do

  
  resources :events do
resources :pictures
  end
  devise_for :users


namespace :api, defaults: {format: 'json'} do
    namespace :v1 do
    resources :guardian_details
  resources :students
    end
  end

namespace :admins do
    resources :students
    resources :guardian_details
  end

 resources :students
    resources :guardian_details


  root to: 'students#index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
