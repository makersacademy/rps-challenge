require 'sinatra/base'
require_relative './lib/computer.rb'
require_relative './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect('/play')
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/move' do
    session[:move] = params[:move]
    redirect('/outcome')
  end

  get '/outcome' do
    @your_move = session[:move]
    computer = Computer.new
    @computer_move = computer.move
    game = Game.new(@your_move, @computer_move)
    @outcome = game.calculate_winner
    erb :outcome
  end

  post '/play_again' do
    redirect('/play')
  end


end
