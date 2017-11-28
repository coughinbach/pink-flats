Rails.application.routes.draw do
  devise_for :users
  root to: 'pages#home'
  get 'about', to: 'pages#about', as: :about
  get 'contact', to: 'pages#contact', as: :contact
  resources :flats do
    resources :bookings, only: [ :create ]
  end
  resources :bookings, only: [ :destroy ]
  get 'dashboard', to: "dashboards#dashboard"
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
