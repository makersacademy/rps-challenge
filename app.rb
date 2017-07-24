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
    human_choice = @game.player.options(params[:weapon])
    session[:computer_selection] = @game.computer_selection
    @game.play(human_choice, session[:computer_selection])
    redirect '/result'
  end

  get '/result' do
    @random_option = session[:computer_selection]
    erb :result
  end

  get '/play-again' do
    erb :play
  end

  run! if app_file == $0
end
