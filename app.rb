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

  helpers do
    def have_name_params?
      if session[:game_type] == :computer
        !params[:player_one].empty?
      else
        !(params[:player_one].empty? || params[:player_two].empty?)
      end
    end
  end


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
    redirect('/enter_names') unless have_name_params?
    session[:player_one] = params[:player_one]
    session[:player_two] = params[:player_two]
    redirect('/player_one')
  end

  get '/player_one' do
    @player = session[:player_one]
    @game_type = session[:game_type]
    erb(:player_one_select)
  end

  get '/player_two' do
    @player = session[:player_two]
    erb(:player_two_select)
  end

  post '/player_one_plays' do
    redirect('/player_one') if params.empty?
    session[:player_one_choice] = params[:selection].to_sym
    session[:game_type] == :computer ? redirect('/result') : redirect('/player_two') 
  end

  post '/player_two_plays' do
    redirect('/player_two') if params.empty?
    session[:player_two_choice] = params[:selection].to_sym
    redirect('/result')
  end

  get '/result' do
    player_one = Player.new(session[:player_one], session[:player_one_choice]) 
    if session[:game_type] == :computer
      player_two = BotPlayer.new
    else
      player_two = Player.new(session[:player_two], session[:player_two_choice]) 
    end
     
    @game = Game.new(player_one, player_two)
    @result = @game.play_game
    erb(:result)
  end

  # Start the server if this file is executed directly 
  # (do not change the line below)
  run! if app_file == $0
end
