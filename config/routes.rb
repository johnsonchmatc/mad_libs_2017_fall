Rails.application.routes.draw do
  get '/about', to: 'static_pages#about'
  
  resources :users
  resources :turns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
