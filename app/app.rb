require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  post '/choice/:id' do
    @game.player.set_choice(params["id"])
    redirect '/result'
  end

  post '/play' do
    erb :play
  end
  
  get '/play' do
    erb :play
  end

  get '/result' do
    @game.computer_move
    @game.player.show_choice
    @outcome = @game.outcome(@game.player.show_choice)
    erb :result
  end
  
  run! if app_file == $0
end
