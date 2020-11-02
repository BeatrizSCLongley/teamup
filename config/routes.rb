Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
  root to: 'pages#home'
  get 'about', to: 'pages#about'
  get 'contact', to: 'pages#contact'

  resources :contacts, only: [ :new, :create ]
  # get 'contact', to 'contact#new', as: :contact
  # post 'contact', to 'contact#create'
end
