require 'sinatra/base'
require_relative 'lib/game'
require_relative 'lib/player'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/sign-in' do
    name = params[:name]

    session[:name] = name
    player = Player.new(name)
    bot = Player.new('Bot')
    session[:game] = Game.new(player, bot)

    redirect '/play'
  end

  get '/play' do
    @game = session[:game]
    @this_player = @game.player_one
    @other_player = @game.player_two
    @this_player_choice = @game.player_one_choice
    @other_player_choice = @game.player_two_choice
    @winner = @game.winner
    erb :play
  end

  post '/play/choose_paper' do
    session[:game].player_one_chooses :paper
    redirect '/play'
  end

  post '/play/choose_scissors' do
    session[:game].player_one_chooses :scissors
    redirect '/play'
  end

  post '/play/choose_rock' do
    session[:game].player_one_chooses :rock
    redirect '/play'
  end
end