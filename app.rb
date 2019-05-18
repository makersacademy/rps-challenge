require 'sinatra/base'
require_relative './lib/player'

class Rps < Sinatra::Base
  enable :sessions

  get "/" do
    "Welcome to Rock, Paper, Scissors!"
    erb :index
  end

  post "/names" do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get "/play" do
    @player = $player
    erb :play
  end

  run! if app_file == $0
end
