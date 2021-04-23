Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  devise_for :users, controllers: { registrations: 'users/registrations',
    sessions: 'users/sessions', confirmations: 'users/confirmations', passwords: 'users/passwords'}

  get '/home', to: 'home#index'
  resources :movies do
    resources :shows do
      collection do
        get :get_shows
      end 
    end
  end

  resources :screens do
    resources :seat_allotments
  end

  resources :bookings do
    member do
      get :pdf
    end
    collection do
      get :search
    end
  end
end
