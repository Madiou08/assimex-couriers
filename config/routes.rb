Rails.application.routes.draw do
 # get 'contacts/new'
  
 # post 'contact', to: 'contacts#process_form'

  resources :contacts, only: [:new, :create]
 # get 'visitors/new' => 'visitors#create'
  root to: 'visitors#index'
end
