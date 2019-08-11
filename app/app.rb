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
    params[:opponent_name] ? opponent = Player.new(params[:opponent_name]) : nil
    session[:game] = Game.new(player, opponent)
    redirect('/player_move')
  end

  get '/player_move' do
    @game = session[:game]
    erb(:player_move)
  end

  post '/player_move' do
    @game = session[:game]
    @game.player_move(params[:move])

    @game.robot_move
    redirect('/tie') if @game.tie?
    redirect('/winner')
  end

  get '/swap_screen' do
    @game = session[:game]
    erb(:swap_screen)
  end

  get '/opponent_move' do
    @game = session[:game]
    erb(:opponent_move)
  end

  post '/opponent_move' do
    @game = session[:game]
    @game.opponent_move(params[:move])
    @game = session[:game]
    erb(:swap_screen)
  end

  get '/tie' do
    @game = session[:game]
    erb(:tie)
  end

  get '/winner' do
    @game = session[:game]
    erb(:winner)
  end

  post '/player_move' do
    session[:game].reset
    redirect('/play')
  end

  run! if app_file == $PROGRAM_NAME
end
