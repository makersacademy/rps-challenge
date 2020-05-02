require 'sinatra'
require './lib/player'
require './lib/ai_player'
require './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:game] = Game.new([Player.new(params[:name]), Player.new('')])
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/choose' do
    @game = session[:game]
    @game.players[0].choose(params[:choice])
    @game.players[1].choose
    redirect('/result')
  end

  get '/result' do
    @game = session[:game]
    @result = @game.result
    erb(:result)
  end

  post '/replay' do
    @game = session[:game]
    session[:game] = Game.new([Player.new(params[:name]), Player.new('')])
    redirect('/play')
  end
end
