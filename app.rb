require 'sinatra/base'
require './lib/turn'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_shape] = params[:shape]
    session[:opponent_shape] = :rock
    redirect '/play'
  end

  run! if app_file == $0
end
