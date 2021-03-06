Rails.application.routes.draw do
  root to: 'pages#home'
  resources :articles
  get "/pages/about", :controller => "pages", :action => "show", :id => "about"
  get 'signup', to: 'users#new'
  #post 'users', to: 'users#create' or it can be done like this
  resources :users, except: [:new]

  get 'login', to: 'sessions#new'
  post 'login', to: 'sessions#create'
  delete 'logout', to: 'sessions#destroy'

  resources :categories, except: [:destroy]
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
