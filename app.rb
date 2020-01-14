require 'sinatra/base'
require './lib/player'
require './lib/computer'
require './lib/game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Computer.new("Computer")
    $game = Game.new(player_1, player_2)
    redirect '/throw'
  end

  get '/throw' do
    @game = $game
  
    puts @game
    erb :throw
  end

  get '/rock' do 
    @game = $game
    erb :rock
  end

  get '/paper' do
    @game = $game
    erb :paper
  end

  get '/scissors' do
    @game = $game
    erb :scissors
  end

  # start the server if ruby file executed directly
  run! if app_file == $0

end
