Rails.application.routes.draw do
  get 'reviews/index'
  get 'reviews/show/:user_id' => 'reviews#show'
  get 'reviews/new'
  post 'reviews' => 'reviews#create'

  root 'static_pages#home'
  get '/home', to: 'static_pages#home'
  get '/help', to: 'static_pages#help'
  get '/about', to: 'static_pages#about'
  get '/contact', to: 'static_pages#contact'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
