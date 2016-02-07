require 'sinatra/base'
require './lib/player'
require './lib/computer'

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
    $player.weapon = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @player_weapon = $player.weapon
    @computer_weapon = Computer.new.weapon
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
