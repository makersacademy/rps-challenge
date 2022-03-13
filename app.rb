require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/comp'
require_relative 'lib/game'

class RPSApp < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :play
  end

  post '/play' do
    @player_name = session[:player_name]
    player = Player.new(@player_name)
    game = Game.new(player)
    @player_choice = params[:choice]
    @comp_choice = game.comp_choice
    @winner = game.winner(@player_choice, @comp_choice)
    erb :play
   end

    post '/exit' do
     erb :index
    end

  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end