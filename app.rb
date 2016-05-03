require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/computer'

 class RpS < Sinatra::Base
   enable :sessions

   get '/' do
    erb :index
  end

  post '/names' do
    player = Player.new(params[:name])
    computer = Computer.new
    @game = Game.create(player)
    redirect '/play'
  end

  before {@game = Game.instance}

  get '/play' do
    erb :play
  end
  get '/move' do
    erb :move
  end

  post '/move' do
    @player_choice = params[:move].to_sym
    @result= @game.select_winner(@player_choice)
    redirect '/winner'
  end

  get '/winner' do
    erb :winner
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
