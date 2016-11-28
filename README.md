# BrewTunes Rails Server

This is an API-only Rails app to support
[BrewTunes](https://github.com/a-ashbeck/BeerTunes). We are using the Spotify
API for BrewTunes and the requests need to be made server-side. This allows us
to do that.

There is just one route `api/playlists`. When you hit that route with the query
parameter `genre=<your genre>`, the genre is used to query the Spotify API.
Twenty playlists are returned and one is chosen at random and returned to you.
We use the [RSpotify](https://github.com/guilhermesad/rspotify) library to
assist our requests.
