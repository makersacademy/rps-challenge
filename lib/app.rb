require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/name' do
    @game = Game.create params[:name]
    redirect '/play'
  end

  get '/play' do
    game = Game.instance
    @name = game.player.name
    erb :play
  end

  post '/selection' do
    session['selection'] = params['selection']
    redirect '/result'
  end

  get '/result' do
    game = Game.instance
    @player = game.player
    @outcome = game.turn(session['selection']).capitalize
    erb :result
  end

  post '/go_back' do
    redirect 'play'
  end
end
