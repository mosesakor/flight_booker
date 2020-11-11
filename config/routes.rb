Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'flights#index'
  # match '/flight' => 'flights', via: :get
  resources :flights
  resources :bookings

end
