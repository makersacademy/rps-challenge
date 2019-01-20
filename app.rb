require 'sinatra/base'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  before do
    @game = Game.instance
  end
  
  get '/' do
    erb(:index)
  end

  post '/create_game' do
    params[:one] == '' ? one = 'You' : one = params[:one]
    params[:two] == '' ? two = 'Computer' : two = params[:two]
    @game = Game.create(Player.new(one), Player.new(two))
    redirect '/choice_one'
  end

  get '/choice_one' do
    erb(:choice_one)
  end

  post '/choice_one' do
    @game.one.choice(params[:choice].to_sym)
    if @game.two.name == 'Computer'
      @game.two.choice
      redirect '/result'
    else
      redirect '/choice_two'
    end
  end
  
  get '/choice_two' do
    erb(:choice_two)
  end

  post '/choice_two' do
    @game.two.choice(params[:choice].to_sym)
    redirect '/result'
  end

  get '/result' do
    erb(:result)
  end
end
