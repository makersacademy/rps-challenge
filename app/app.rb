require 'sinatra'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.current
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    @game = Game.start(Player.new(params[:player], params[:choice]))
    @game.generate_response
    @game.previous_name
    erb(:play)
  end
end
