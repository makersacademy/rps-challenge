require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPSApp < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

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

  post '/number-of-players' do
    @number = params[:players].to_i
    redirect '/name-entry'
  end

  get '/name-entry' do
    erb :name_entry
  end
  
  post '/submit-names' do
    @game.add_player(params[:player1_name])
    params[:player2_name].nil? ? @game.add_computer_opponents : @game.add_player(params[:player2_name])
    redirect '/welcome'
  end
  
  get '/rules' do
    erb :rules
  end

  get '/game-screen' do
    @player1, @player2 = @game.players
    @player2.set_random_choice if @player2.computer?
    if @player1.choice_made? && @player2.choice_made?
      erb :game_complete
    else
      erb :game_screen
    end
  end

  get '/player1-selection' do
    erb :player1_choice_entry
  end
  
  post '/player1-choice' do
    p params
    redirect '/game-screen'
  end
  
  get '/player2-selection' do
    erb :player2_choice_entry
  end

  post '/player2-choice' do
    p params
    redirect '/game-screen'
  end

  # Start the server if the file is executed directly
  run! if app_file == $0
end
