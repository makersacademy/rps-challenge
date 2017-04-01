require 'sinatra/base'
require_relative './lib/player'

class RPS < Sinatra::Base

  before '/*' do
    @player = Player.get
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    Player.set_instance(params["name"])
    redirect '/start'
  end

  get '/start' do
    "#{@player.name}, it's your turn!"
  end

    run! if app_file == $0
end
