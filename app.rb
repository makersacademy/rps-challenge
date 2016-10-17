require './lib/player'
require './lib/game'
require 'sinatra/base'

class RPS < Sinatra::Base

  enable :sessions

  before do
    @game = Game.instance
  end

  get '/' do
    erb :index
  end

  post '/name' do
    player = Player.new(params[:name])
    trump = Trump.new
    @game = Game.create(player, trump)
    redirect '/choose'
  end

  get '/choose' do
    erb :choose
  end

  post '/outcome' do
    @game.player.choose_weapon('rock') if params[:rock]
    @game.player.choose_weapon('paper') if params[:paper]
    @game.player.choose_weapon('scissors') if params[:scissors]
    @game.complete_turn
    if @game.over?
      redirect '/game_over'
    else
      redirect '/outcome'
    end
  end

  get '/outcome' do
    erb :outcome
  end

  get '/game_over' do
    erb :game_over
  end

  post '/reset' do
    redirect '/'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
