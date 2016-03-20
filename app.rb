require 'sinatra/base'
require './lib/player'
require './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  before {
    @game = Game.get_game
    @session = session
   }

  get '/' do
    session.clear
    erb :index
  end

  get '/p1_login' do
    erb :p1_login
  end

  get '/p2_login' do
    erb :p2_login
  end

  post '/p1_submit' do
    session['1P game'] = true
    player_1 = Player.new(params[:player_1_name])
    Game.start(player_1)
    redirect '/p1_play'
  end

  post '/p2_submit' do
    player_1 = Player.new(params[:player_1_name])
    player_2 = Player.new(params[:player_2_name])
    Game.start(player_1)
    Game.get_game.add_player(player_2)
    redirect '/p2_play'
  end

  get '/p1_play' do
    erb :p1_play
  end

  get '/p2_play' do
    clear_choices
    erb :p2_play
  end

  post '/p1_chosen' do
    session['player_1_choice'] = params[:rps_choice].downcase.to_sym
    if session['1P game']
      redirect '/rps'
    else
      session['player_2_choice'] ? (redirect '/rps') : (redirect 'p1_waiting')
    end
  end

  post '/p2_chosen' do
    session['player_2_choice'] = params[:rps_choice].downcase.to_sym
    session['player_1_choice'] ? (redirect '/rps') : (redirect 'p2_waiting')
  end

  get '/p1_waiting' do
    erb :p1_waiting
  end

  get '/p2_waiting' do
    erb :p2_waiting
  end

  get '/rps' do
    if session['player_2_choice']
      @game.rps(session['player_1_choice'], session['player_2_choice'])
      redirect '/p2_result'
    else
      @game.rps(session['player_1_choice'])
      redirect '/p1_result'
    end
  end

  get '/p1_result' do
    erb :p1_result
  end

  get '/p2_result' do
    erb :p2_result
  end

private

  def clear_choices
    session.delete('player_1_choice')
    session.delete('player_2_choice')
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
