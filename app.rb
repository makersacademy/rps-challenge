require 'sinatra/base'
require 'sinatra/reloader'
require './lib/turn'
require './lib/opponent'


class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader   
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @turn = Turn.new(session)
    erb :play
  end

  post '/play' do
    session[:player_shape] = params[:shape]
    session[:opponent_shape] = Opponent.new.shape
    redirect '/play'
  end

  run! if app_file == $0
end
