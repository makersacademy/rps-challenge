require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name-move' do
    session[:challenger] = Challenger.new(params[:challenger], params[:move])
    redirect '/game'
  end

  get '/game' do
    @game = Game.new(session[:challenger], Computer.new)
    erb(:game)
  end

  run! if app_file == $0

end
