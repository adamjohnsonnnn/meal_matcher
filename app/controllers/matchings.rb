post '/matchings' do
  @matching = Matching.create_matching(params[:matching])
  @matching.determine_match
  erb :'/matchings/new'
end

post '/matchings/index' do
  @matchings = Matching.match_users
  erb :'/matchings/new'
end
