Rottenpotatoes::Application.routes.draw do
  resources :movies
  get 'movies/similar_movies/:id', :to => 'movies#similar_movies', :as => 'similar_movies'
  # map '/' to be a redirect to '/movies'
  root :to => redirect('/movies')
end
