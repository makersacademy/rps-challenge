require 'sinatra'
require './lib/player'
require './lib/results'

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

  post '/confirmation' do
    @final_result = Results.new.winner(@player.name, params[:choice])
    erb(:confirmation)
  end

  run! if app_file == $PROGRAM_NAME
end
