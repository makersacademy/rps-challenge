require 'sinatra/base'
require './lib/game'

class App < Sinatra::Base
  enable :sessions 

  before do
    @game = Game.instance
  end
  
  get '/' do
    "value = " << session[:value].inspect
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
    session[:move] = params[:move]
    @game.swap_turns
    redirect '/turn'
  end 
  
  post '/result' do 
    @game.swap_turns
    session[:move2] = params[:move2]
    redirect '/result'
  end 

  get '/result' do 
    @move = session[:move]
    @move2 = session[:move2]
    erb(:result)
  end

  post '/new-game' do 
    session.clear
    redirect '/'
  end
  run! if app_file == $0

end
