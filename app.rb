require 'sinatra/base'
require 'sinatra/reloader'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    session['player_name'] = params['name']
    redirect '/your_turn'
  end

  get '/your_turn' do
    @player_name = session['player_name']
    erb :your_turn
  end

  post '/your_choice' do
    session['your_play'] = params['play_option']
    redirect '/outcome'
  end

  get '/outcome' do
    @your_play = session['your_play']
    @opponent_play = ['rock', 'paper', 'scissors'].sample
    p @opponent_play
    erb :outcome
  end

  run! if app_file == $0
end
