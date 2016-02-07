require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name]) #code_smell
    redirect '/play'
  end

  get '/play' do
    @player = $player
    @name = @player.name
    erb :play
  end

  post '/choice' do
    $weapon = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player = $player
    @player.weapon = $weapon
    @game = Game.new(@player)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
