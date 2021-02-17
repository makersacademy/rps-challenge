require 'sinatra/base'
require_relative 'lib/player'
require_relative 'lib/computer'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    session[:game] = Game.new(Player.new(params[:player_1]), Computer.new)
    redirect('/play')
  end

  get '/play' do
    @game = session[:game]
    erb(:play)
  end

  post '/choose' do
    @game = session[:game]
    session[:p1_choice] = params[:choice]
    session[:p2_choice] = @game.player_2.choose
    redirect('/outcome')
  end

  get '/outcome' do
    @game = session[:game]
    @p1_choice = session[:p1_choice]
    @p2_choice = session[:p2_choice]
    erb(@game.result(@p1_choice, @p2_choice))
  end

  run! if app_file == $0
end
