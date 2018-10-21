require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:game] = Game.new(Player.new(params[:player]))
    redirect '/play'
  end

  get '/play' do
    session[:move] = params[:move]
    erb(:play)
  end

  post '/attack' do
    @attack = session[:move]
    session[:result] = session[:game].store(session[:game].move(@attack, session[:game].comp_move))
    redirect '/result'
  end

  get '/result' do
    @end_game = session[:result]
    erb(:result)
  end

  run! if app_file == $0
end
