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
    
    session[:name] = Player.new(params[:name])
    @player = session[:name]
    erb :play
  end

  get '/play' do
    @player = session[:name]
    erb :play
  end

  post '/result' do
    
    @player = session[:name]
    @player.choice(params[:result])
  
    @game = RPS.new(@player) # will hold choices and result
    p @game
    erb :result
  end

end
