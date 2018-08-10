Rails.application.routes.draw do
  root  'home#index' 
  devise_for :users
  get '/events', to: 'events#show' , as:'events' 
  get '/details', to: 'home#show', as: 'details'
  resources :events , only: [:create, :new ]
  resources :response , only: [:create]
  # For details on the DSL  available within this file, see http://guides.rubyonrails.org/routing.html
end
