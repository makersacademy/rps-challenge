require 'sinatra/base'
require './lib/game'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :form
  end

  post '/name' do
    session[:game] = Game.new params[:name]
    redirect '/play'
  end

  get '/play' do
    game = session[:game]
    @name = game.player.name
    erb :play
  end

  post '/selection' do
    session['selection'] = params['selection']
    redirect '/result'
  end

  get '/result' do
    game = session[:game]
    human_selection = session['selection']
    @outcome = game.turn(human_selection).capitalize
    erb :result
  end
end
