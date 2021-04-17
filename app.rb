require 'sinatra'
require 'sinatra/reloader' if development?
require_relative './lib/player.rb'
require_relative './lib/game.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
end

  get '/' do 
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player1])
    computer = Player.new("computer")
    $game = Game.new(player1, computer)
    redirect '/playgame'
  end

  get '/playgame' do 
    @game = $game
    erb :playgame
  end

  run! if app_file == $0
end