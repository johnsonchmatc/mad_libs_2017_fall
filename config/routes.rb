Rails.application.routes.draw do
  resources :stories
	get    'login'   => 'sessions#new'
	get    'signup'  => 'users#new'
	post   'login'   => 'sessions#create'
	delete 'logout'  => 'sessions#destroy'

  get '/about', to: 'static_pages#about'

  resources :users, except: [:new]
  resources :turns
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
