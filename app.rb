require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  get '/' do
    redirect '/RPS/new_player'
  end
  run if app_file == $0

  enable :sessions

  get '/RPS/new_player' do
    erb(:new_player)
  end

  post '/RPS/choice' do
    session['game'].set_player_choice(params[:player_choice])
    session['game'].get_computer_choice
    session['result'] = session['game'].compare_choices
    redirect '/RPS/play'
  end

  post '/RPS/set_player' do
    session['game'] = Game.new(params[:player])
    session['result'] = nil
    redirect '/RPS/play'
  end

  get '/RPS/play' do
    @game = session['game']
    @result = session['result']
    erb(:play)
  end


end
