require 'sinatra/base'
require './lib/player.rb'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player = Player.new(params[:player_name])
    erb :play
  end

  get '/play' do
    @player_name = @player.name
    erb :play
  end

  get '/result' do
    erb :result
  end

  run! if app_file == $0
end
