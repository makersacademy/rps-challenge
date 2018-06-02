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

  post '/choose_weapon' do
    erb :choose_weapon
  end

  post '/result' do
    @player_weapon = params[:weapon]
    @player_name = session[:player_name]
    computer = Computer.new
    @computer_weapon = computer.choose_weapon
    winner = Winner.new
    @result = winner.result(@player_weapon,@computer_weapon)
    erb :result
  end

#  run! if app_file == $0 what does this do?
end

# The issue here is that I am setting the computor and winner classes in the result post requrest.
# They are not being brought in as an argument
# How am I going to create a double of them?
