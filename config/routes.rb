Rails.application.routes.draw do
  namespace :api do 
    namespace :v1 do 
      resources :comments
      resources :playlist_videos
      resources :playlist_followers
      resources :videos
      resources :playlists
      resources :users 
      post '/login', to: 'auth#create'
      get '/current_user', to: 'auth#show'
      get '/allplaylists', to: 'playlists#all_playlists'
      delete 'playlist_videos/:video_id/:playlist_id', to: 'playlist_videos#deleterecord'
    end
  end
  
end
