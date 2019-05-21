Rails.application.routes.draw do
  resources :sightings
  root  'controller_name#index' 
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
