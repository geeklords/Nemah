Rails.application.routes.draw do
  resources :posts
  resources :reservations
  devise_for :users

  get "/aboutus", to: "about#index", as: "about_us"
  root 'posts#index'
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

end
