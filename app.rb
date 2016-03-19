require 'sinatra/base'
require './lib/game'

class RPSGame < Sinatra::Base

  enable :sessions

  before do
    @game = Game.current_game
  end

  get '/' do
    erb :name_entry
  end

  post '/names' do
    Game.start(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player1.name
    erb :play
  end

  post '/selection' do
    @game.player1.weapon= params[:weapon]
    redirect '/result'
  end

  get '/result' do
    erb @game.result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
