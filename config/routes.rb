Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', confirmations: 'users/confirmations', passwords: 'users/passwords'}

  get '/home', to: 'home#index'
  resources :movies
end
