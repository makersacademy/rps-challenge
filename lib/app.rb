require 'sinatra/base'
require_relative 'game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/rock' do
    @game = Game.create("rock")
    redirect 'result'
  end

  post '/paper' do
    @game = Game.create("paper")
    redirect 'result'
  end

  post '/scissors' do
    @game = Game.create("scissors")
    redirect 'result'
  end

  get '/result' do
    @game = Game.instance
    erb(:result)
  end

  run! if app_file == $0

end
