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

  get '/result' do
    @game = session[:game]
    @game.player.select_hand(params[:hand].downcase.to_sym)
    @result = @game.play_rps
    erb(:result)
  end

end
