require 'test_helper'

# test it!
class PlaylistTest < ActionDispatch::IntegrationTest
  test 'responds with success when no genre given' do
    get '/api/playlists'

    assert response.success?
  end

  test 'responds with success when genre given' do
    get '/api/playlists?genre=indie'

    assert response.success?
  end

  test 'returns playlist' do
    get '/api/playlists?genre=indie'

    body = JSON.parse(response.body, symbolize_names: true)
    assert_includes body[:href], 'https://api.spotify'
  end
end
