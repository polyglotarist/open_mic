Rails.application.routes.draw do
  namespace :api do
    post '/sessions' => 'sessions#create'

    get "/songs" => "songs#index"
    post "/songs" => "songs#create"
    get "/songs/:id" => "songs#show"
    patch "/songs/:id" => "songs#update"
    delete "/songs/:id" => "songs#destroy"

    get "/artists" => "artists#index"
    post "/artists" => "artists#create"
    get "/artists/:id" => "artists#show"
    patch "/artists/:id" => "artists#update"
    delete "/artists/:id" => "artists#destroy"
  
    get "/categories" => "categories#index"
    post "/categories" => "categories#create"
    get "/categories/:id" => "categories#show"
    patch "/categories/:id" => "categories#update"
    delete "/categories/:id" => "categories#destroy"
  
    get "/users" => "users#index"
    post "/users" => "users#create"
    get "/users/:id" => "users#show"
    patch "/users/:id" => "users#update"
    delete "/users/:id" => "users#destroy"
  
    get "/chords" => "chords#index"
    post "/chords" => "chords#create"
    get "/chords/:id" => "chords#show"
    patch "/chords/:id" => "chords#update"
    delete "/chords/:id" => "chords#destroy"
  end
end
