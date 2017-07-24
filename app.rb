require 'sinatra/base'
require './lib/player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name_intro' do
    player_1 = Player.new(params[:player_name])
    Game.create(player_1)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/log' do
    current_choice = params[:Rock] || params[:Paper] || params[:Scissors]
    @game.player.choose_option(current_choice)
    redirect '/opponent_response'
  end

  get '/opponent_response' do
    @game.generate_response
    redirect '/showdown'
  end

  get '/showdown' do
    @game.declare_winner
    erb :showdown
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
