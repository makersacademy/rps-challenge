require 'sinatra'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player_name])
    @game = Game.create(player)
    redirect '/game'
  end

  before do
    @game = Game.instance
  end

  get '/game' do
    erb(:game)
  end

  post '/play' do
    @game.play(params[:cbox])
    redirect '/outcome'
  end

  get '/outcome' do
    @leader = @game.leader
    erb(:outcome)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
