require 'sinatra/base'
require 'sinatra/reloader'
require_relative '../lib/game.rb'
require_relative '../lib/player.rb'

class Rochambeau < Sinatra::Base
  enable :sessions
  register Sinatra::Reloader

  WELCOME = 'Welcome to Rochambeau'.freeze

  get '/' do
    erb(:index)
  end

  post '/new_game' do
    player = Player.new(params[:player_name])
    rules = params[:rule_set] == 'rps' ? Game::RPS : Game::RPSLS
    params[:opponent_name] ? opponent = Player.new(params[:opponent_name]) : nil
    session[:game] = Game.new(player ,opponent,rules)
    redirect('/player_move')
  end


  get '/player_move' do
    @game = session[:game]
    @user = :p
    erb(:player_move)
  end

  post '/player_move' do
    redirect('/player_move') unless params[:move]
    @game = session[:game]
    @game.player_move(params[:move])

    redirect('/swap_screen') if @game.two_player?

    @game.robot_move

    redirect('/result')
  end

  get '/swap_screen' do
    @game = session[:game]
    erb(:swap_screen)
  end

  get '/opponent_move' do
    @game = session[:game]
    @user = :o
    erb(:player_move)
  end

  post '/opponent_move' do
    redirect('/opponent_move') unless params[:move]

    @game = session[:game]
    @game.opponent_move(params[:move])

    redirect('/result')
  end


  get '/result' do
    @game = session[:game]
    @game.update_scorecard

    erb(@game.result)
  end


  post '/play_again' do
    session[:game].reset
    redirect('/player_move')
  end


  run! if app_file == $PROGRAM_NAME
end
