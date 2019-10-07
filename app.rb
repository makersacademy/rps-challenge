require 'sinatra/base'
require 'sinatra'
require './lib/computer'
require './lib/player'
require './lib/winner'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    p params
    @name = session[:name]
    erb(:play)
  end

  post '/winner' do
	    @player_move = params[:player_move]
	    computer = Computer.new
	    @computer_move = computer.move
	    winner = Winner.new(@player_move, @computer_move)
	    @result = winner.result(@player_move, @computer_move)
	    erb :winner
	  end

end
