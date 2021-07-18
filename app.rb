require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class RPS < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/name' do
    Game.instance.start(params[:player])
    redirect to('/game')
  end

  get '/game' do
    @player = Game.instance.player_name
    erb(:game)
  end

  post '/choice' do
    @computer_choice = Game.instance.RPS_sample
    redirect to(Game.instance.result_check(params[:choice], @computer_choice))
  end

  get '/win' do
    erb(:win)
  end
  get '/draw' do
    erb(:draw)
  end
  get '/lose' do
    erb(:lose)
  end

end
