require 'sinatra/base'
require './lib/game.rb'
require './lib/computer.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/game_choice' do
    session[:how_many_players] = params[:how_many_players]
    session[:which_game] = params[:which_game]
    redirect '/name'
  end

  get '/name' do
    @how_many_players = session[:how_many_players]
    erb :name
  end

  post '/one_name' do
    session[:name] = params[:name]
    redirect '/game_one_player'
  end

  get '/game_one_player' do
    @which_game = session[:which_game]
    @name = session[:name]
    @choice = session[:choice]
    @thrown = (Computer.new).weapon
    game = Game.new(@choice, @thrown)
    @won = game.won?
    erb :game_one_player
  end

  post '/game_one_player' do
    session[:choice] = params[:choice]
    redirect '/game_one_player'
  end

  post '/two_names' do
    session[:name_one] = params[:name_one]
    session[:name_two] = params[:name_two]
    redirect '/game_first_player'
  end

  get '/game_first_player' do
    @name_one = session[:name_one]
    @which_game = session[:which_game]
    erb :game_first_player
  end

  post '/game_second_player' do
    session[:choice_one] = params[:choice]
    redirect '/game_second_player'
  end

  get '/game_second_player' do
    @name_two = session[:name_two]
    @which_game = session[:which_game]
    erb :game_second_player
  end

  post '/game_two_players' do
    session[:choice_two] = params[:choice]
    redirect '/game_two_players_final'
  end

  get '/game_two_players_final' do
    @name_one = session[:name_one]
    @name_two = session[:name_two]
    @choice_one = session[:choice_one]
    @choice_two = session[:choice_two]
    game = Game.new(@choice_one, @choice_two)
    @won = game.won?
    erb :game_two_players_final
  end

  post '/replay_game_two_players' do
    @name_one = session[:name_one]
    @which_game = session[:which_game]
    erb :game_first_player
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end


#<%= stylesheet_link_tag "main" %>
