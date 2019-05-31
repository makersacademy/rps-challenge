require 'sinatra/base'
require './lib/game'

class App < Sinatra::Base

  before do
    @game = Game.instance
  end
  
  get '/' do
    @game = Game.instance
    erb(:welcome)
  end

  post '/' do
    @game.add_player(params[:name])
    @game.add_player(params[:name2])
    redirect '/turn'
  end

  get '/turn' do 
    erb(:play) 
  end 

  post '/swap-turns' do
    @move = params[:move]
    @game.swap_turns
    redirect '/turn'
  end 
  
  post '/result' do 
    @game.swap_turns
    @move2 = params[:move2]
    erb(:result)
  end 

  run! if app_file == $0

end