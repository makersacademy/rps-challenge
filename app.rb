require 'sinatra/base'
require './lib/player'
require './lib/game'
require './lib/weapons'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb(:index)
  end

  post '/players' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    @player_name = @game.player.name
    erb(:play)
  end

  post '/moves' do
    @game.set_moves(params[:submit].downcase)
    redirect '/results'
  end

  get '/results' do
    @output = @game.output
    erb(:results)
  end

  run! if app_file == $0
end