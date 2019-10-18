require 'sinatra/base'
require 'capybara'
require_relative 'player'
require_relative 'game'
require_relative 'rps'
class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    player_1 = Player.new(params[:player_1_name])
    $game = Game.new(player_1)
    redirect '/display'
  end

  get '/display' do
    @game = $game
    erb :display
  end

  post '/\'/play-choice' do
    $play = Rps.new(params[:choice])
    @play = $play
    @game = $game
    erb :playchoice
  end

  get '/end' do
    @play = $play
    @game = $game
    erb :end
  end

  run! if app_file == $0
end
