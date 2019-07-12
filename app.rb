require 'sinatra/base'
require 'capybara'
require_relative './lib/player'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:player_name])
    redirect '/play'
  end

  get '/play' do
    @player= $player
    erb :play
  end

  get '/game' do
    @player = $player
    erb :game
  end

  run! if app_file == $0
end
