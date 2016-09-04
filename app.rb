require 'sinatra'
require_relative './lib/game'

class RockPaperScissors < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    player = Player.new(params[:player_name])
    computer = Computer.new
    $game = Game.create(player, computer)
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
    @winner = @game.winner.name
    erb(:outcome)
  end



  # start the server if ruby file executed directly
  run! if app_file == $0
end
