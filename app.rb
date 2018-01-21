require 'sinatra/base'
require './lib/player.rb'
require './lib/game.rb'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:player])
    @game = Game.create(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/rock' do
    @game.rock
    redirect '/selection'
  end

  post '/paper' do
    @game.paper
    redirect '/selection'
  end

  post '/scissors' do
    @game.scissors
    redirect '/selection'
  end

  get '/selection' do
    erb :selection
  end

  run! if app_file == $0
  # this allows to run the server if the ruby file has been executed directly

end
