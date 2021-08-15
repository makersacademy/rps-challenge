# in app.rb
require './lib/player'
require './lib/rps'
require 'sinatra/base'
require 'sinatra/reloader'

class BookmarkManager < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/players' do
    $player1 = Player.new(params[:player1])
    redirect '/begin'
  end

  get '/begin' do
    @Player1 = $player1.name
    erb :play
  end

  post '/move' do
    $game = RPS.new(params[:move1])
    redirect '/game_result'
  end

  get '/game_result' do
    @Player_1 = $player1.name
    @game_result = $game.game_results
    erb :game_result
  end


  run! if app_file == $0
end


