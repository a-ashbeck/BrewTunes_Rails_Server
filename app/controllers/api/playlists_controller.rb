module API
  # get me a playlist
  class PlaylistsController < ApplicationController
    require 'rspotify'

    def index
      render json: playlist, status: :ok
    end

    private

    def playlist
      RSpotify.authenticate(ENV['SPOTIFY_CLIENT_ID'],
                            ENV['SPOTIFY_CLIENT_SECRET'])
      RSpotify::Playlist.search(params[:genre] || 'rock', limit: 20).sample
    end
  end
end
