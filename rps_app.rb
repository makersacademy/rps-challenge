require 'sinatra/base'
require './lib/challenger'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name-move' do
    session[:move] = Move.new(params[:move])
    session[:challenger] = Challenger.new(params[:challenger], session[:move])
    redirect '/game'
  end

  get '/game' do
    @challenger = session[:challenger]
    @move = session[:move]
    erb(:game)
  end

  run! if app_file == $0

end
