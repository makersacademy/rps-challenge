require 'sinatra/base'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions
  set :session_secret, 'super secret'

  get '/' do
    erb(:index)
  end

  post '/name' do
    @game = Game.create(params[:name])

    redirect to('/choose-move')
  end

  get '/choose-move' do
    @game = Game.instance
    erb(:choose_move)
  end

  run! if app_file == $0
end


