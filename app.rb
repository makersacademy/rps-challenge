require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    $game = Game.new(Player.new(params[:name]))
    redirect('/play')
  end

  get '/play' do
    erb(:play)
  end

  post '/result' do
    # "Result displayed here"
    erb(:result)
  end

  run! if app_file == $0
end
