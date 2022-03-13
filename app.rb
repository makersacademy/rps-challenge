require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPSApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  before do
    @game = Game.instance
  end

  # Routes
  get '/' do
    @game.reset
    erb :index
  end

  get '/welcome' do
    @number = @game.number_of_players
    @player1, @player2 = @game.players
    erb :welcome
  end
  
  get '/name-entry' do
    @number = session.delete(:number_of_players)
    erb :name_entry
  end

  post '/name-entry' do
    session[:number_of_players] = params["players"].to_i
    redirect '/name-entry'
  end
  
  post '/submit-names' do
    player1_name, player2_name = params[:player1_name], params[:player2_name]
    player1_name = 'Player 1' if player1_name.empty?
    @game.add_player(player1_name)
    if player2_name.nil?
      @game.add_computer_opponents
    elsif player2_name.empty?
      player2_name = 'Player 2'
    else
      @game.add_player(player2_name)
    end
    redirect '/welcome'
  end
  
  get '/rules' do
    erb :rules
  end

  get '/game-screen' do
    @player1, @player2 = @game.players
    @player2.set_random_choice if @player2.computer?
    if @game.choices_made?
      erb :game_complete
    else
      erb :game_screen
    end
  end

  get '/play-again' do
    @game.reset_choices
    redirect '/game-screen'
  end

  get '/player1-selection' do
    erb :player1_choice_entry
  end
  
  post '/player1-choice' do
    @player1 = @game.players[0]
    @player1.choice = (params[:player1_choice])
    redirect '/game-screen'
  end
  
  get '/player2-selection' do
    erb :player2_choice_entry
  end

  post '/player2-choice' do
    @player2 = @game.players[1]
    @player2.choice = (params[:player2_choice])
    redirect '/game-screen'
  end

  # Start the server if the file is executed directly
  run! if app_file == $0
end
