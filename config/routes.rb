Rails.application.routes.draw do
  namespace :api do
    post '/sessions' => 'sessions#create'

    get "/songs" => "songs#index"
    get "/songs/new" => "songs#new"
    post "/songs" => "songs#create"
    get "/songs/:id" => "songs#show"
    get "/songs/:id/edit" => "songs#edit"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"

    get "/artists" => "artists#index"
    get "/artists/new" => "artists#new"
    post "/artists" => "artists#create"
    get "/artists/:id" => "artists#show"
    get "/artists/:id/edit" => "artists#edit"
    patch "/artists/:id" => "artists#update"
    delete "/artists/:id" => "artists#destroy"
  
    get "/categories" => "categories#index"
    get "/categories/new" => "categories#new"
    post "/categories" => "categories#create"
    get "/categories/:id" => "categories#show"
    get "/categories/:id/edit" => "categories#edit"
    patch "/categories/:id" => "categories#update"
    delete "/categories/:id" => "categories#destroy"
  
    get "/users" => "users#index"
    get "/users/new" => "users#new"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    get "/users/:id/edit" => "users#edit"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
  
    get "/chords" => "chords#index"
    get "/chords/new" => "chords#new"
    post "/chords" => "chords#create"
    get "/chords/:id" => "chords#show"
    get "/chords/:id/edit" => "chords#edit"
    patch "/chords/:id" => "chords#update"
    delete "/chords/:id" => "chords#destroy"
  end
end
