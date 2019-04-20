require 'sinatra/base'
require 'sass'
require_relative 'lib/player'

class Rps < Sinatra::Base
  enable :sessions
  
  get '/styles.css' do
    scss :styles
  end

  get '/' do
    erb :index
  end

  get '/name' do
    erb :name
  end

  get '/start' do
    @player_one = Player.new(session[:player_name])
    erb :start
  end

  post '/play' do
    session[:player_name] = params[:name]
    redirect '/start'
  end
end
