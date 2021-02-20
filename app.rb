require 'sinatra'
require './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Base
  configure do
    enable :sessions
    set    :session_secret, ENV['SESSION_SECRET']
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/name'
  end

  before { @game = Game.instance }

  get '/name' do
    erb :name
  end

  get '/play' do
    erb :play
  end

  get '/game' do
    @game.player.choice = params[:choice]
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
