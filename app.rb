require 'sinatra/base'
require_relative "./lib/turn"
require_relative "./lib/opponent"

class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_1_move] = params[:player_1_move].to_sym
    session[:opponent_move] = Opponent.new.move
    redirect '/play'
  end

  run! if app_file == $0

end
