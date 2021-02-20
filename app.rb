require 'sinatra'
require './lib/game'
require './lib/player'
require './lib/ai'

class RockPaperScissors < Sinatra::Base
  before { @game = Game.instance }

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:name])
    redirect '/name'
  end

  get '/name' do
    erb :name, layout: :name_layout
  end

  get '/play' do
    erb :play, layout: :play_layout
  end

  get '/game' do
    @game.player.move = params[:choice].to_sym
    @game.ai.choose
    erb :game
  end

  run! if app_file == $PROGRAM_NAME
end
