require 'sinatra/base'
require './lib/game.rb'

class RPSWeb < Sinatra::Base
  
  enable :sessions
  set :sessions, :expire_after => 10
  
  get '/' do
    erb :sign_in_page
  end
  
  get '/multi' do
    erb :sign_in_multi
  end
  
  post '/play' do
   name = "name" + "#{params['Choose Player'].to_i}"
   session[name] = params['player_name']
   session['player'] = params['Choose Player']
   redirect '/game'
  end
  
  get '/game' do
    if session['player'] == '1_player'
      redirect '/multi_1'
    elsif session['player'] == '2_player'
      redirect '/multi_2'
    else
      @player_1 = session['name0']
      erb :game
    end
  end
  
  get '/multi_1' do
     @player_1 = session['name1']
     erb :multi_1
  end
  
  get '/multi_2' do
     @player_2 = session['name2']
     erb :multi_2
  end
  
  post '/result' do
    session['player_choice'] = params['choice']
    redirect '/display_result'
  end
  
  post '/result_multi' do
    session['player_1_choice'] ||= params['choice_1']
    session['player_2_choice'] ||= params['choice_2']
    redirect '/display_multi'
  end
  
  get '/player_name' do
    erb :choose_name
  end
  
  get '/display_result' do
    @player_1 = session['name0']
    @choice = session['player_choice']
    @game = Game.new(@choice)
    erb :result
  end
  
  get '/display_multi' do
    @player_1 = session['name1']
    @choice_1 = session['player_1_choice']
    @player_2 = session['name2']
    @choice_2 = session['player_2_choice']
    $database = [Game.new(@choice_1, @choice_2), @player_1, @player_2]
    erb :confirm
  end
  
  get '/result_multi' do
    erb :result_multi
  end
  
  
  
  
  post '/switch' do
    params['game_type'] == 'Single Player' ? redirect('/') : redirect('/multi')
  end
  
  run! if app_file == $PROGRAM_NAME
end