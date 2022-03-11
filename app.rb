require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader 
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/username' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/game'
  end

  get '/game' do
    @game = $game
    erb :game
  end

  run! if app_file == $0
end
