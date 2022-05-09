
require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    $player = Player.new(params[:player_name])

    redirect "/play"
  end

  get '/play' do
    @player = $player
    @move = "You haven't played yet"
    erb :play
  end

  run! if app_file == $0
end