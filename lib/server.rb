require 'sinatra/base'
require_relative 'game'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/game' do
    # puts @other = other_move
    session[:name] = params[:name] if params[:name]
    params[:win] = true if params[:move] && Game.new.win?(params[:move].to_sym)
    puts session.inspect
    puts params.inspect
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
