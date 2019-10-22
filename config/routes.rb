Rails.application.routes.draw do
  devise_for :users, controllers: {
  confirmations: 'users/confirmations',
  passwords:     'users/passwords',
  registrations: 'users/registrations',
  sessions:      'users/sessions',
  omniauth_callbacks: 'users/omniauth_callbacks'
}
  get '/login',to:"sessions#new"
  post '/login',to:"sessions#create"
  root 'memos#index'
  resources :memos
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
