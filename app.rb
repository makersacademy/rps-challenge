require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/rps'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    
    erb :index

  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/result' do
    @game = RpsGame.new
    @game.play(params[:move])
    @outcome = @game.outcome
    erb :outcome
  end

  run! if app_file == $0

end
