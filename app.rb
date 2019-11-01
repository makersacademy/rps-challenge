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
    erb :play
  end
end