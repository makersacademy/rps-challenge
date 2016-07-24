require 'sinatra/base'
require './lib/player'
require './lib/game'

class Rock_paper_scissors < Sinatra::Base
enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    @game = Game.instance
    erb :play
  end

  post '/result' do
    @game = Game.instance
    @player_choice = @game.player_move(params[:player_1_choice])
    @computer_choice = @game.computer_choice
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
