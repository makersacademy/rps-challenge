require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class Rps < Sinatra::Base

  set :public_folder, 'stylesheets'

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player1 = Player.new(params[:player1_name])
    player2 = Player.new(params[:player2_name])
    @game = Game.create(player1, player2)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/selection' do
    @game.player1.selected_option = params[:option1]
    @game.player2.selected_option = params[:option2]
    erb :selection
  end

  post '/result' do
    erb :result
  end

  run! if app_file == $PROGRAM_NAME
end
