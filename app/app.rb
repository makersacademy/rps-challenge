require 'sinatra/base'
require './app/models/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:welcome)
  end

  post '/' do
    session[:p1] = Player.new(params[:name])
    if params[:name2].empty?
      session[:p2] = Computer.new
    else
      session[:p2] = Player.new(params[:name2])
    end
    session[:game] = Game.new(session[:p1], session[:p2])
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/play' do
    @game = session[:game]
    if @game.on_turn == session[:p1]
      session[:choices] = [params['choice'].to_sym]
      redirect '/result' unless @game.multiplayer?
      @game.switch
      redirect '/play'
    else
      session[:choices] << params['choice'].to_sym
      @game.switch
    end
    redirect '/result'
  end

  get '/result' do
    @game = session[:game]
    @game.make_move(session[:choices])
    @game.calculate_winner
    @game.tie? ? erb(:tie) : erb(:winner)
  end

  run! if app_file == $0
end
