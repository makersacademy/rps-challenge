require 'sinatra/base'
require 'sinatra/reloader'
require './lib/player'
require './lib/game'
require './lib/result'

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  before do
    @game = Game.instance
  end

  get '/' do 
    erb :index
  end

  post '/names' do
    player1 = Player.new(params[:player_name].to_s)
    computer = Player.new("Computer")
    @game = Game.create(player1, computer)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/decide-winner' do
    @game.player1.pick_action(params[:player_action])
    @game.player2.pick_action
    redirect '/result'
  end

  get '/result' do
    @result = Result.new(@game)
    erb :result
  end

  run! if app_file == $0
end
