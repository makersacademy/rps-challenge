require 'sinatra/base'
require_relative './lib/player'
require_relative './lib/rivalbot'

class Rps < Sinatra::Base
  enable :sessions

  get '/' do
    # "Testing infrastructure working!"
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player = $player
    erb :play
  end

  post '/result' do
    $player_choice = $player.make_choice(params[:player_choice])
    $robo_choice = Rivalbot.new.make_choice
    redirect '/result'
  end

  get '/result' do
    @player_choice = $player_choice
    @robo_choice = $robo_choice
    erb :result
  end

  run! if app_file == $0
end
