require 'test_helper'

# test it!
class PlaylistTest < ActionDispatch::IntegrationTest
  setup { host! 'api.example.com' }

  test 'returns playlist' do
    get '/api/playlists?genre=indie'

    assert response.success?
  end
end
