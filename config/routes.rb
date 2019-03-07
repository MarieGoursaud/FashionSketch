Rails.application.routes.draw do
  resources :sketches
 root to: 'home#index'
end
