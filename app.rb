require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class RPSApp < Sinatra::Base
  enable :sessions

  configure :development do 
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/start' do
    $game = Game.new(Player.new(params[:name]), Player.new)
    redirect '/game'
  end

  get '/game' do
    @game = $game
    erb(:game)
  end

  post '/moves' do
    $game.player1.select_move(params[:move])
    $game.player2.select_move
    redirect '/result'
  end

  get '/result' do
    @game = $game
    erb(:result)
  end

  run! if app_file == $0
end
