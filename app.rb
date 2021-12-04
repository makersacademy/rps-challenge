require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Battle < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :session

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player1] = Player.new(params[:name1])
    @name = session[:player1].name
    @victories = session[:player1].victories
    erb :play
  end

  get '/play' do
  
  end

  run! if app_file == $0
end
