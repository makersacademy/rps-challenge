require 'sinatra/base'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/game' do
    session[:name] = params[:name]
    redirect '/game'
  end

  get '/game' do
    erb(:game)
  end

  post '/turn' do
    @turn = Game.new(params[:move])
    session[:result] = @turn.outcome
    session[:cpu_move] = @turn.cpu_move
    session[:player_move] = @turn.player_move
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end

  run! if app_file == $0

end
