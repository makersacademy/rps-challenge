require 'sinatra'
# require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions
  set :session_secret, 'key'

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:player1] = params[:'player1']
    redirect('/play')
  end

  get '/play' do
    @player1 = session[:player1]
    erb(:play)
  end

  get '/result' do
    @player1 = session[:player1]
    erb(:result)
  end
end
