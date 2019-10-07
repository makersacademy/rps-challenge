require 'sinatra/base'
require './lib/player.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    # "Welcome to Rock, Paper, Scissors!"
    erb(:index)
  end

  post '/name' do
    $player = Player.new(params[:player])
    redirect '/play'
  end

  get '/play' do
    @player = $player.name
    erb :play
  end

  run! if app_file == $0
end
