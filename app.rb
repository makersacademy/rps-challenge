require 'sinatra/base'
require './lib/game'
class Rps < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/name' do
    @player_name = params[:player_name]
    session[:game] = Game.new(@player_name)
    redirect "/play"
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  get '/rock' do
    @game = session[:game]
    @game.player.select_hand(:rock)
    @result = @game.play_rps
    erb(:rock)
  end

  get '/paper' do
    @game = session[:game]
    @game.player.select_hand(:paper)
    @result = @game.play_rps
    erb(:paper)
  end

  get '/scissors' do
    @game = session[:game]
    @game.player.select_hand(:scissors)
    @result = @game.play_rps
    erb(:scissors)
  end

end
