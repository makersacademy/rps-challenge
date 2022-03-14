require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'
require_relative './lib/player'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/name' do
    $player = Player.new(params[:name])
    redirect '/play'
  end

  get '/play' do
    @player_name = $player.name
    erb :play
  end

  post '/choice' do
    $player.input_choice(params[:choice])
    redirect '/result'
  end

  get '/result' do
    @game = Game.new($player)
    @choice = $player.choice
    erb :result
  end

  run! if app_file == $0
end
