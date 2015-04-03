require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions
  include Game

  get '/' do
    erb :index
  end

  post '/game' do
    @other_move = other_move
    session[:name] = params[:name] if params[:name]
    @move = params[:move]
    params[:result] = result(@move, @other_move) if @move
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
