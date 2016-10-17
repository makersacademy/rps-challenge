require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/names' do
   @player = Player.new(params[:player_name])
   @game = Game.create(@player)
   redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/outcome' do
    @game.player_choice=params[:player_choice].to_sym
    erb :outcome
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
