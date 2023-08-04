Rails.application.routes.draw do
  get 'serie' => 'serie#index'
  get 'serie/create'
  get 'serie/new'
  get 'documentary_film' => 'documentary_film#index'
  get 'documentary_film/create'
  get 'documentary_film/new'
  get 'movie' => 'movie#index'
  get 'movie/create'
  get 'movie/new'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # post routes
  post 'movies' => 'movie#create'
  post 'documentary_films' => 'documentary_film#create'
  post 'series' => 'serie#create'

  # Defines the root path route ("/")
  # root "articles#index"
end
