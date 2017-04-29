require 'sinatra'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.current unless @game.nil?
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    @game = Game.start(params[:player], params[:choice])
    @game.generate_response
    erb(:play)
  end
end
