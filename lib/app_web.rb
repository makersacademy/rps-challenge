require 'byebug'
require 'sinatra/base'
require_relative 'game'

class AppWeb < Sinatra::Base

  enable :session

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
    $game = Game.new(game_mode_parser(params[:game_mode]))

    redirect_to '/play'
  end

  get '/play' do
    
  end

  def game_mode_parser params
   if params == "play against the machine"
      play_mode = :solo 
   else
      play_mode = params.to_sym
   end
 end

end