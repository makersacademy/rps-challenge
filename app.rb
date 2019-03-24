require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:p1name])
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  run! if app_file == $0
end
