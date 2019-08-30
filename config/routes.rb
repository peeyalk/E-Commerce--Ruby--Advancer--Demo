Rails.application.routes.draw do
  resources :line_items
  resources :carts do
    collection do
      post :check_out
    end
  end
  resources :instruments
  devise_for :users, controller: {
    registrations: 'registrations'
  }
  root 'instruments#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
