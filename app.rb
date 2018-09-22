require 'sinatra/base'
require_relative 'lib/player'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player] = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player = session[:player]
    @options = ["Rock", "Paper", "Scissors", "Lizard", "Spock"]
    erb(:play)
  end

  post '/result' do
    session[:player].chose_move(params[:possible_moves])
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    erb(:result)
  end
end
