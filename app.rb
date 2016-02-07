require 'sinatra/base'
require './lib/game.rb'

class RPSWeb < Sinatra::Base
  
  enable :sessions
  
  get '/' do
    erb :sign_in_page
  end
  
  post '/play' do
   session['name'] = params['player_1']
   redirect '/game'
  end
  
  get '/game' do
    @player_1 = session['name']
    erb :game
  end
  
  post '/result' do
    session['player_choice'] = params['choice']
    redirect '/display_result'
  end
  
  get '/display_result' do
    @player_1 = session['name']
    @choice = session['player_choice']
    @game = Game.new(@choice)
    erb :result
  end
  
  run! if app_file == $0
end