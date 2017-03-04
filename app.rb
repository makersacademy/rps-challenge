require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb :index
  end

  post '/name' do
    p params
    player = Player.new(params[:name])
    @game = Game.create_game(player)
    redirect '/play'
  end

  before do
    @game = Game.instance
  end

  get '/play' do
    erb :play
  end

  post '/option' do
    p params
    @game.select_option(params[:option])
    redirect '/choice'
  end

  get '/choice' do
    @game.generate_rand_option
    erb :choice
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
