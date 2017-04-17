require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rps < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    $player = params[:name]
    puts $player
    redirect('/welcome')
  end

  get '/welcome' do
    @player = $player
    erb(:welcome)
  end

  get '/play' do
    @player = $player
    erb(:play)
  end

  post '/playing' do
    @player = $player
    $game = Game.new(params[:hand])
    $game.play
    redirect('/score')
  end

  get '/score' do
    @player = $player
    @game = $game
    erb(:score)
  end

  get '/end' do
    erb(:end)
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end
