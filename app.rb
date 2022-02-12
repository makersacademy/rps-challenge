require 'sinatra'
require "sinatra/reloader" if development?

require File.join(File.dirname(__FILE__), 'lib', 'player.rb')
require File.join(File.dirname(__FILE__), 'lib', 'game.rb')
require File.join(File.dirname(__FILE__), 'lib', 'botplayer.rb')

class RPS < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game_type' do
    session[:game_type] = params[:game_type].to_sym
    redirect('/enter_names')
  end

  get '/enter_names' do
    @game_type = session[:game_type]
    erb(:names)
  end

  post '/register_name' do
    redirect('/enter_names') if params[:player_one].empty?
    session[:player_one] = params[:player_one]
    redirect('/play')
  end

  get '/play' do
    @player = session[:player_one]
    erb(:play)
  end

  post '/move' do
    redirect('/play') if params.empty?
    session[:player_choice] = params[:selection].to_sym
    redirect('/result')
  end

  get '/result' do
    player = Player.new(session[:player_one], session[:player_choice]) 
    @game = Game.new(player, BotPlayer.new)
    @result = @game.play_game
    erb(:result)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end
