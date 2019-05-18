require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]

    redirect :play
  end

  get '/play' do
    session[:player] = Player.new(session[:player_name])
    @player = session[:player]

    erb(:play)
  end

  post '/choice' do
    session[:player_choice] = params[:choice]

    redirect :result
  end

  get '/result' do
    @player = session[:player]
    @player_choice = session[:player_choice]

    erb(:result)
  end
end
