Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  resources :flats do
    resources :bookings, only: [ :create ]
    resources :reviews, only: [ :create ]
  end
  resources :bookings, only: [ :destroy ]
  get 'dashboard', to: "dashboards#dashboard"
  get 'booking/:id/accept_booking', to: "bookings#accept", as: "accept_booking"
  get 'booking/:id/decline_booking', to: "bookings#decline", as: "decline_booking"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
