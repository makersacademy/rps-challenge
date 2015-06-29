require 'byebug'
require 'sinatra/base'
require_relative 'game'

class AppWeb < Sinatra::Base

  enable :sessions

  run! if app_file == $0
  set :views, proc { File.join(root, '..', 'views') }
 
  get '/' do
    erb :index
  end

  post '/name' do
    session[:user] = params[:name]

    erb :start_game
  end

  post '/set_up_game' do
    if $game 
      session[:player] = :player_2
    else
      $game = Game.new(game_mode_parser(params[:game_mode]))
      session[:player] = :player_1
    end

    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/play' do 
    @result = $game.send(session[:player]).play params[:shape].to_sym
  
    erb :result
  end

  def game_mode_parser params
    if params == "play against the machine"
      play_mode = :solo 
    else
      play_mode = params.to_sym
    end
  end


end