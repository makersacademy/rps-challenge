require "sinatra/base"
require './lib/cpu'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    erb :index
    redirect 'play'
  end

  get '/play' do
    session[:player] = Player.new(session[:name])
    @player = session[:player]
    
    erb :play
  end

  post '/fight' do
    session[:weapon] = ([params[:rock], params[:paper], params[:scissors]].join)
    redirect '/result'
  end

  get '/result' do
    @player = session[:player]
    @weapon = session[:weapon]
    erb :result
  end

end