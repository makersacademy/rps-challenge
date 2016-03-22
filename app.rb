require 'sinatra/base'
require 'sinatra'
require './lib/game'


class Rps < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/login' do
    session[:me] = params[:player_name]
    players = params[:number_of_players].to_i
    redirect '/error' if Game.create(player_name: params[:player_name],
                                     players: players)
    Game.wait? ? redirect('/login_wait') : redirect('/play')
  end

  get '/login_wait' do
    @login = true
    erb(:wait)
  end

  post '/login_check' do
    @opponent = Game.instance.find_opponent(session[:me])
    @opponent.nil? ? redirect('/login_wait') : redirect('/play')
  end

  get '/play' do
    @game = Game.instance
    @me = @game.find_me(session[:me])
    @opponent = @game.find_opponent(session[:me])
    @result = @game.result
    erb(:play)
  end

  post '/turn' do
    redirect '/nothing_selected' if params[:play].nil?
    Game.instance.in_progress!
    Game.instance.play(player_name: session[:me],
      move: params[:play].to_sym) ? redirect('/play_wait') : redirect('/play')
  end

  get '/play_wait' do
    @login = false
    erb(:wait)
  end

  post '/play_check' do
    if Game.instance.both_played?
      Game.instance.complete_turn
      redirect '/play'
    elsif Game.instance.turn_finished?
      redirect '/play'
    else
      redirect '/play_wait'
    end
  end

  post '/new' do
    Game.reset
    redirect '/'
  end

  get '/nothing_selected' do
    erb(:nothing_selected)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
