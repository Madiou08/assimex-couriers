Rails.application.routes.draw do
  resources :visitors, only: [:new, :create]
  get 'visitors/new' => 'visitors#contact'
  root to: 'visitors#index'
end
