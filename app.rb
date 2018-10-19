require 'sinatra/base'

class RPS < Sinatra::Base

get '/' do
  erb :index
end

post '/names' do
  $player_name = params[:player_name]
  redirect '/play'
end

get '/play' do
  @player_name = $player_name
  erb :play
end

post '/choice' do
  @player_name = $player_name
  @choice = params[:choice]
  erb :decision
end


end
