require 'sinatra/base'
require_relative './lib/game'
require_relative './lib/player'

class RPS < Sinatra::Base
  enable :sessions
  get '/' do
    erb(:index)
  end

  post '/play' do
    session[:p1_name] = params[:p1_name]
    session[:p2_name] = params[:p2_name]
    player_1 = Player.new(params[:p1_name])
    player_2 = session[:p2_name].nil? ? nil : Player.new(params[:p2_name])
    Game.create_new({player_1: player_1,
                     player_2: player_2})
    redirect '/play'
  end

  get '/play' do
    @p1_name, @p2_name = session[:p1_name], session[:p2_name] || "AI"
    @current_player = Game.instance.curr_turn.name
    erb(:play)
  end

  get '/gameover' do
    @p1_name, @p2_name = session[:p1_name], session[:p2_name] || "AI"
    @winner, @p1_choice, @p2_choice = Game.instance.get_winner, Game.instance.player_1.choice, Game.instance.player_2.choice
    erb(:gameover)
  end

  post '/make_choice' do
    Game.instance.make_move(params[:choice])
    Game.instance.make_move(["Rock", "Paper", "Scissors", "Lizard", "Spock"].sample) if Game.instance.curr_turn.ai
    Game.instance.complete? ? redirect('/gameover') : redirect('/play')
  end

  post '/play_again' do
    Game.instance.reset_choices
    redirect '/play'
  end
end
