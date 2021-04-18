require 'sinatra'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  set :port, 4563
  enable :sessions

  get '/' do 
    erb :index
  end

  post '/names' do
    player = Player.new(params[:player_name])
    $game = Game.new(player)
    redirect '/play'
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/rock' do
    @game = $game
    @com = @game.com_move
    erb :rock
  end

  get '/paper' do
    @game = $game
    @com = @game.com_move
    erb :paper
  end

  get '/scissors' do
    @game = $game
    @com = @game.com_move
    erb :scissors
  end

  run! if app_file == $0
end