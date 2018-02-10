Rails.application.routes.draw do
  namespace :api do
    resources :playlists, only: :index
  end
end
