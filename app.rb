require 'sinatra/base'
require './lib/play'

class Game < Sinatra::Base

  configure do
    enable :sessions
    set :session_secret, "Session secret"
  end

  get '/' do
    erb(:index)
  end

  post '/login' do
    add_names(params[:player_name_1], params[:player_name_2])

    session[:the_game] = Play.new(session[:player_name_1], session[:player_name_2])
    redirect '/play_game'
  end

  before do
    @the_game = session[:the_game]
    @player_name_1 = session[:player_name_1]
    @player_name_2 = session[:player_name_2]
  end

  get '/play_game' do
    erb(:play_game)
  end

  post '/shoot' do
    @the_game.play(params[:player_choice_1], params[:player_choice_2])
    redirect '/play_game'
  end

  def add_names(name_1, name_2)
    session[:player_name_1] = name_1

    if name_2 != ''
      session[:player_name_2] = name_2
    else
      session[:player_name_2] = 'Deep Thought'
    end
  end

  run! if app_file == $0

end
