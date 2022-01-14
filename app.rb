require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/choice' do
    choice = params[:choice]
    @game = Game.new(choice.downcase)
    session[:game] = @game.play
    session[:cpu] = @game.cpu
    redirect '/result'
  end

  get '/result' do
    @result = session[:game]
    @cpu = session[:cpu]
    erb :result
  end

  run! if app_file == $0
end
