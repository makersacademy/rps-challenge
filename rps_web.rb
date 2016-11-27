require 'sinatra'

get '/' do
  erb(:sign_in)
end

post '/play' do
  player = Player.new(params[:player_name])
  p player.name
end
