require 'sinatra/base'
require_relative 'lib/computer_player.rb'
require_relative 'lib/game.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name'do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/contest'do
    session[:player_choice] = params[:choice].to_sym
    session[:computer_choice] = Computer_Player.new.play
    session[:result] = Game.new(session[:player_choice], session[:computer_choice])
    redirect '/result'
  end

  get '/result'do
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    @result = session[:result].result
    erb :result
  end

run! if app_file == $0
end
