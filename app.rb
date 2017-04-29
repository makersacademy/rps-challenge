require 'sinatra'
require './lib/player'

class Game < Sinatra::Base

  get '/' do
    erb(:home)
  end

  post '/name' do
    @player = Player.create(params[:player])
    redirect '/play'
  end

  before do
    @player = Player.instance
  end

  get '/play' do
    erb(:play)
  end

  run! if app_file == $PROGRAM_NAME
end
