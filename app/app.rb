require 'sinatra'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.current
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    @game = Game.start(Player.new(params[:player], params[:choice]))
    redirect '/player_two' if params[:no_of_players] == 'two_player'
    @game.player_2.generate_response
    erb(:play)
  end

  get '/player_two' do
    "Second player fills in info here"
  end
end
