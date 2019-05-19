require 'sinatra/base'
require './lib/player'

class Rps < Sinatra::Base

  #enable :sessions

  get '/test' do
    "Testing infrastructure working"
  end

  get '/' do
    erb (:index)
  end

  post '/play' do
    @player = Player.new(params[:name])
    p @player.name
    erb (:play)
  end

end
