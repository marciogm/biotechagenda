Rails.application.routes.draw do
  devise_for :admins
  resources :events
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root "home#index"

  resources :calendar, only: [:index]

  get '/select/states/', to: 'select#states', as: 'select_states'
  get '/select/cities/', to: 'select#cities', as: 'select_cities'
end
