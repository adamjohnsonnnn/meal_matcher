post '/matchings' do
  @matching = Matching.new(params[:matching])
  p @matching

  gmaps = GoogleMapsService::Client.new
  origins = @matching.origin
  destinations = @matching.destination

  matrix = gmaps.distance_matrix(origins, destinations,
    mode: 'driving',
    language: 'en-AU',
    avoid: 'tolls',
    units: 'imperial')

  p matrix

  redirect "/"
end
