Rails.application.routes.draw do
  root to: 'pages#home'
  resources :articles
  get "/pages/about", :controller => "pages", :action => "show", :id => "about"
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
