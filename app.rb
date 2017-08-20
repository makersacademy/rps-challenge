require 'sinatra'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    @name = Player.new(params[:name])
    $game = Game.new(@name)
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/game' do
    "Your selection is #{params[:selection]}, The computer has chosen #{$game.computer_choice}"
  end

end
