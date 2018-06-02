require 'sinatra/base'
require_relative './lib/computer'
require_relative './lib/winner'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :enter
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    @player_name = session[:player_name]
    erb :initiate
  end

  post '/play' do
    erb :play
  end

  post '/result' do
    @player_weapon = params[:weapon]
    @player_name = session[:player_name]
    computer = Computer.new
    @computer_weapon = computer.weapon
    winner = Winner.new
    @result = winner.result(@player_weapon,@computer_weapon)
    erb :result
  end

#  run! if app_file == $0 what does this do?
end
