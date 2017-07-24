require 'sinatra/base'
require './lib/game'
require './lib/player'

class RPS < Sinatra::Base
  enable :sessions

  before do
    @game = session[:game]
  end

  get '/' do
    erb :index
  end

  post '/play' do
    player = Player.new(params[:name])
    session[:game] = Game.create(player)
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/result' do
    @game.player.options(params[:weapon])
    @random_option = @game.computer_selection
    #@winner = @game.summary to complete
    redirect '/result'
  end

  get '/result' do
    erb :result
  end

  get '/play-again' do
    erb :play
  end

  run! if app_file == $0
end
