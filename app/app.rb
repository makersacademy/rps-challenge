require 'sinatra'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.current unless @game.nil?
  end

  get '/' do
    erb(:index)
  end

  post '/info' do
    @game = Game.start(params[:player], params[:choice])
    erb(:play)
  end
end
