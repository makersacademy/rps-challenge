require 'sinatra/base'
# require'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb :play
  end

  get '/result' do
    @game = Game.new
    @decision = params[:decision]
    erb @game.result
  end
end
