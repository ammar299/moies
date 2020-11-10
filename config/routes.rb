Rails.application.routes.draw do
  resources :movies
  get 'pages/home'
  devise_for :users
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root :to => "application#index"
end
