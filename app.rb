require 'sinatra'
require 'sinatra/reloader' if test?
require_relative 'lib/game'
require_relative 'lib/helpers/string'

class RPS < Sinatra::Base
  include Game
  include StringHelpers
  
  enable :sessions

  configure :test do 
    register Sinatra::Reloader
  end

  get '/' do
    session[:winner] = nil

    erb :welcome
  end

  get '/play' do
    redirect '/' unless session[:player]

    @player = session[:player]
    @player_image = "/images/#{session[:player_move]}.png"
    @robot_image = "/images/#{session[:robot_move]}.png"
    @winner = session[:winner]
    @victory_message = victory_string(@winner, @player)
    @comparator = comparator_string(@winner)
 
    erb :play
  end

  post '/create-player' do
    session[:player] = params[:player]

    redirect '/play'
  end

  post '/move' do
    session[:winner] = nil
    session[:player_move] = params[:move]
    session[:robot_move] = random_move
    session[:winner] = judge(session[:player_move], session[:robot_move])

    redirect '/play'
  end

  run! if app_file == $0
end
