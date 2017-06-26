require 'sinatra/base'
require './lib/opponent'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session)
    erb :play
  end

  post '/play' do
    session[:player_choice] = params[:choice].downcase.to_sym
    session[:opponent_choice] = Opponent.new.choice
    redirect '/play'
  end
  run! if app_file == $0
end
