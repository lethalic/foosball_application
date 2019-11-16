Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: "home#index"
  get '/ranking' => 'home#ranking'

  resources :users
  resources :teams
  resources :matches

  get "*any", via: :all, to: "errors#not_found"
end
