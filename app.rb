require 'sinatra/base'
require 'sinatra/reloader'
require './lib/rps'
require './lib/player'


class Game < Sinatra::Base

  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/play' do
    session[:game] = RPS.new
    session[:name] = Player.new(params[:name])
    @player = session[:name]
    erb :play
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  get '/result' do
    @game = session[:game]
    erb :result
  end

end
