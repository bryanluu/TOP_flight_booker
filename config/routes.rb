Rails.application.routes.draw do
  root 'flights#index'

  get 'flights', to: 'flights#index'

  resources :bookings, only: %i[new create show]
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
