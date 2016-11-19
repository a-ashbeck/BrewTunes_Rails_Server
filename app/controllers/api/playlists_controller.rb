module API
  # get me a playlist
  class PlaylistsController < ApplicationController
    require 'rspotify'

    CLIENT_ID = 'c50a9f3c50054f5c909218f6e7cc1239'.freeze
    CLIENT_SECRET = 'd6a31e2b3550463ca01b09b6418ac554'.freeze

    def index
      render json: playlist, status: 200
    end

    private

    def playlist
      authenticate
      playlists = RSpotify::Playlist.search(params[:genre] || 'rock', limit: 20)
      playlists[(0..19).to_a.sample]
      # playlists[(0..19).to_a.sample].external_urls["spotify"]
    end

    def authenticate
      RSpotify.authenticate(CLIENT_ID, CLIENT_SECRET)
    end
  end
end
