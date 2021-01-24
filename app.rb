require 'sinatra/base'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  attr_reader :game


  get '/' do
    erb(:index)
  end

  get '/one_player' do
    session[:two_players] = false
    erb(:one_player_name)
  end

  # get '/two_players' do
  #   session[:two_players] = true
  #   erb(:two_player_names)
  # end

  post '/name_assign_one_player' do
    session[:player_one_name] = params[:player_one]
    redirect '/character_one_player'
  end

  post '/name_assign_two_player' do
    session[:player_one_name] = params[:player_one]
    session[:player_two_name] = params[:player_two]
  end

  get '/character_one_player' do
    @player_name = session[:player_one_name]
    erb(:character_selection)
  end

  post '/selection_rock' do
    session[:player_one_character] = params[:rock]
    redirect '/setup_one_player'
  end

  post '/selection_paper' do
    session[:player_one_character] = params[:paper]
    redirect '/setup_one_player'
  end

  post '/selection_scissors' do
    session[:player_one_character] = params[:scissors]
    redirect '/setup_one_player'
  end

  get '/setup_one_player' do
    @player_one_character = session[:player_one_character]
    @player_one_name = session[:player_one_name]
    erb(:game_intro_one_player)
  end

  get '/game_one_player' do
    @game = Game.create(session[:player_one_character])
    @game.play
    erb(:one_player_game)
  end

  before do
    @game = Game.instance
  end

  get '/one_player_result' do
    erb(:one_player_end)
  end

  run! if app_file == $0

end
