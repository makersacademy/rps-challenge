require 'sinatra/base'
require './lib/game_helper'
class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb :index
  end
  post '/name' do
    session[:player_name] ||= params[:player_name]
    @name = session[:player_name]
    erb :play
  end
  post '/play' do
    @move = params[:move].downcase.to_sym
    @opponent = Gamehelper.random
    @result = Gamehelper.decision(@move, @opponent)
    erb :result
  end
  run! if app_file == $0
end
