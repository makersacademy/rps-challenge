require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end


  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_1 = Player.new(session[:name], session[:move])
    @opponent = Player.new('Opponent', session[:opponent_move])
    @game = Game.new(@player_1, @opponent)#.randomise_move)
    erb :play
  end

  post '/play' do
    session[:move] = params[:move]
    session[:opponent_move] = :rock
    redirect '/play'
  end

  run if app_file == $0
end
