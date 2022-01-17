Rails.application.routes.draw do
  resources :posts

  resources :post_frames, controller: 'posts'

  get 'posts/main'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "posts#main"
end
