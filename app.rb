require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    @choice = session[:choice]
    # @game = Game.new
    erb :play
  end

  post '/play' do
    session[:choice] = params[:choice]
    redirect '/play'
  end

  get '/result' do
    @game = Game.new
    erb :result
  end

  run! if app_file == $0
end
