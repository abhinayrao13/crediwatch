Rails.application.routes.draw do
  mount CrediwatchAuth::Engine, at: "/crediwatch_auth"
  root 'posts#index'
  resources :posts
  resources :comments
end
