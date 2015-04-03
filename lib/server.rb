require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions
  include Game

  get '/' do
    erb :index
  end

  post '/game' do
    session[:name] = params[:name] if params[:name]
    if params[:move]
      @other_move = other_move
      other_move
      @move = params[:move]
      params[:result] = result(@move, @other_move)
      params.inspect
    end
    erb :game
  end

  get '/game' do
    erb :index
  end

  run! if app_file == $PROGRAM_NAME
end
