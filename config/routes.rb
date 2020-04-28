Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :comments
      resources :playlist_videos
      resources :playlist_followers
      resources :videos
      resources :playlists
      resources :users # Remove after validation.
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
    end
  end
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
