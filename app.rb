require 'sinatra/base'
require './lib/game'
require './lib/computer'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/play' do
    $game = Game.new(params[:username], Computer.new)
    redirect('/play')
  end

  get '/play' do
    @game = $game
    erb :play
  end

  get '/result' do
    @game = $game
    @game.selection((params[:selection]).to_sym)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end

# the marketeer will be presented the choices (rock, paper and scissors)
# the marketeer can choose one option
# the game will choose a random option
# a winner will be declared
