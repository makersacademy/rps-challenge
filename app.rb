require 'sinatra/base'
require './lib/player'
require './lib/computer_player'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player' do
    session[:player1] = params[:player1]
    @name = session[:player1]
    redirect '/gameplay'
  end

  get '/gameplay' do
    @name = session[:player1]
    erb(:gameplay)

  end

  post '/gameplay' do
    session[:player_selection] = params[:player_selection]
    erb(:result)
  end

  get '/result' do
    session[:player_selection] = params[:player_selection]
    @name = session[:player1]
    @player_selection = session[:player_selection]
    @computer_player = Computer.new
    @computer_choice = @computer_player.computer_choice
    @game = Game.new(@player_selection, @computer_choice)
    @game_result = @game.game_result(@player_selection, @computer_choice)
    erb(:result)
  end

  post 'result' do
    erb(:result)
  end
end
