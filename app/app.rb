require 'sinatra/base'
require './app/models/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  post '/' do
    p params
    session[:p1] = Player.new(params[:name])
    params[:name2].empty? ? session[:p2] = Computer.new : session[:p2] = Player.new(params[:name2])
    session[:game] = Game.new(session[:p1], session[:p2])
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/play' do
    session[:p1choice] = params["choice"]
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @p1choice = session[:p1choice].to_sym
    @game.make_move(@p1choice, 'nil')
    @game.calculate_winner
    @game.tie? ? erb(:tie) : erb(:winner)
  end

  run! if app_file == $0
end
