require 'sinatra/base'
require './lib/computer'
require './lib/game_engine'

class RPSWeb < Sinatra::Base
  enable :sessions
  
  get '/' do
    erb :index, :locals => {:player_1 => session['player_1']}
  end

  post '/names' do
    session['player_1'] = params[:player_1]
    redirect '/play'
  end

  get '/play' do
    erb :play, :locals => {:player_1 => session['player_1']}
  end

  post '/result' do
    session['choice'] = params[:choice]
    redirect '/result'
  end

  get '/result' do
    @comp_weapon = Computer.new.weapon
    erb :result, :locals => {:player_1 => session['player_1'],
                             :choice => session['choice'],
                             :comp_choice => @comp_weapon,
                             :winner_is => Game.new(session['choice'], @comp_weapon).winner_is
                            }

  end

  run! if app_file == $0
end
