Rails.application.routes.draw do
	get    'login'   => 'sessions#new'
	get    'signup'  => 'users#new'
	post   'login'   => 'sessions#create'
	delete 'logout'  => 'sessions#destroy'

  get 'about', to: 'static_pages#about'
  get 'busweather', to: 'static_pages#bus_weather'

  resources :users, except: [:new]
  resources :turns
  resources :account_activations, only: [:edit]

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'static_pages#home'
end
