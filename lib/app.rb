require 'sinatra'
require_relative './game.rb'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    session[:game] = Game.new
    erb(:index)
  end

  post '/name' do
    session[:game].create_player(params[:player_name])
    redirect '/choose-move'
  end

  get '/choose-move' do
    @game = session[:game]
    erb(:choose_move)
  end

  post '/move' do
    session[:game].player.save_move(params[:move])
    redirect '/results'
  end

  get '/results' do
    session[:game].winner_is
    @game = session[:game]
    erb(:results)
  end

  run! if app_file == $0
end
