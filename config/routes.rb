Rails.application.routes.draw do
  resources :capybaras
  resources :dogs
  resources :cats
  resources :animals
  resources :transbanks
  resources :payment_methods
  resources :stripes
  resources :paypals
  resources :oneclicks
  resources :webpays
  resources :creditcards
  resources :orders
  resources :physicals
  resources :digitals
  resources :products
  resources :profiles
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
