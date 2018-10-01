require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'
require_relative 'lib/computer'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @game = Game.create(Player.new(params[:player_1]))
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/options' do
    @game.play(params[:chosen_option])
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  get '/end' do
    erb :end
  end

  run! if app_file == $0
end
