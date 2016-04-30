require 'sinatra/base'
require './lib/player'


class GamePlay < Sinatra::Base
enable :sessions

get '/' do
  erb :index
end

post '/set_player_name' do
  session[:player_name] = params[:player_name]
  redirect '/game_play'
end

get '/game_play' do
  @player = Player.new(session[:player_name])
  erb :game_play
end


run! if app_file == $0

end
