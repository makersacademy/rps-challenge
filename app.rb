require 'sinatra/base'
require_relative './lib/player'


class RockPaperScissors < Sinatra::Base

  set :session_secret, "Here be Dragons"


  get '/' do
    erb :form
  end

  post '/names' do
    $player_1 = Player.new(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @player_1 = $player_1
    erb :play
  end

  run! if app_file == $0
end
