require 'sinatra'
require "sinatra/reloader" if development?
require 'pstore'

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

  post '/register_name' do
    redirect('/') if params[:player_name].empty?
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player = session[:player_name]
    erb(:play)
  end

  post '/move' do
    redirect('/play') if params.empty?
    session[:player_choice] = params[:selection].to_sym
    redirect('/result')
  end

  get '/result' do
    player = Player.new(session[:player_name], session[:player_choice]) 
    @game = Game.new(player, BotPlayer.new)
    @result = @game.play_game
    erb(:result)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end
