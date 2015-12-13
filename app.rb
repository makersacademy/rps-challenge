require 'sinatra'
require './lib/player'

class RPS < Sinatra::Application
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:game] = Game.new
    session[:game].add_player(Player.new(params[:name]))
    redirect '/play'
  end

  get '/play' do
    @player = session[:game].player
    erb :play
  end

  post '/decision' do
    @player = session[:game].player
    @player.decides(params[:decision])
    redirect '/confirmation'
  end

  get '/confirmation' do
    @player = session[:game].player
    erb :confirmation
  end

  post '/computer' do
    @opponent = Computer.new('Computer')
    @opponent.random_decides
    session[:game].add_player(@opponent)
    redirect '/response'
  end

  get '/response' do
    @opponent = session[:game].opponent
    erb :response
  end

  get '/result' do
    @game = session[:game]
    erb :result
  end


run! if app_file == $0
end
