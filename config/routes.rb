Rails.application.routes.draw do
  get 'reviews/index'

  get 'reviews/show'

  get 'reviews/new'

  post "reviews" => "reviews#create"

  root 'static_pages#home'
  get 'static_pages/home'
  get 'static_pages/help'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
