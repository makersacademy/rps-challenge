require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  get '/' do
    erb(:name_registration)
  end

  post '/name' do
    Player.create(params['name'])
    redirect '/play'
  end

  get '/play' do
    @player = Player.instance
    erb(:play)  
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
