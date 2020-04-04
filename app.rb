require "sinatra/base"
require './lib/cpu'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:game] = Game.new(params[:name])
    erb :index
    redirect 'play'
  end

  get '/play' do
    @player = session[:game].player
    erb :play
  end

  post '/fight' do
    session[:game].player.pick_weapon([params[:rock], params[:paper], params[:scissors]].join)    
    redirect 'result'
  end

  get '/result' do
    @player = session[:game].player
    @cpu = session[:game].cpu
    @result = session[:game].result
    erb :result
  end

  post '/replay' do 
    session[:game].new_game
    redirect 'play'
  end

end
