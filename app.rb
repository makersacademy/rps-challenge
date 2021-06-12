require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader    
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $0
end