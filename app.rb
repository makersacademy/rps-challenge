require "sinatra/base"
require "sinatra/reloader"
require './lib/game'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect('/play')
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play_view)
  end

  post '/move' do
    session[:game] = Game.new(params[:player_move])
    # session[:player_move] = params[:player_move]
    redirect('/outcome')
  end

  get '/outcome' do
    @player_name = session[:player_name]
    @game = session[:game]
    @player_move = @game.player_move
    @comp_move = @game.comp_move
    @result = @game.outcome
    erb(:outcome_view)
  end

  run! if @app_file == $0
end
