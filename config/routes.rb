Rails.application.routes.draw do
  resources :sign_ups, only: [:new, :create]
  resources :activities, only: [:index]
  resources :campers, only: [:index, :show, :destroy]

  # get '/campers/:id', to: 'campers#show', as: 'camper'

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
