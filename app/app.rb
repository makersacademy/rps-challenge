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

  post '/new_single_player_game' do
    session[:game] = Game.new(Player.new(params[:player_name]))
    redirect('/play')
  end

  post '/new_two_player_game' do
    player = Player.new(params[:player_name])
    opponent = Player.new(params[:opponent_name])
    session[:game] = Game.new(player, opponent)
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  get '/swap_screen' do
    erb(:swap_screen)
  end

  post '/move' do
    @game = session[:game]
    @game.player_move(params[:move])
    @game.robot_move
    redirect('/tie') if @game.tie?
    redirect('/winner')
  end

  get '/tie' do
    @game = session[:game]
    erb(:tie)
  end

  get '/winner' do
    @game = session[:game]
    erb(:winner)
  end

  post '/play_again' do
    session[:game].reset
    redirect('/play')
  end

  run! if app_file == $PROGRAM_NAME
end
