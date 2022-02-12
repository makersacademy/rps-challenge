require 'sinatra'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  #enable :sessions

  get '/' do
    erb(:index)
  end
  
  get '/game' do
    @player = $player
    erb(:game)
  end

  post '/login' do
    $player = params["player"]
    redirect '/game'
  end

  run! if app_file == $0

end
  