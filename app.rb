require 'sinatra/base'
require './lib/gamer'

class Game < Sinatra::Base

  enable :sessions
  set :sessions, 'my username'
  run! if app_file == $0

  get '/' do
    erb(:index)
  end

  post '/registered' do
    $p_name = Gamer.new(params[:Player_name])
    redirect('/play')
  end

  post '/play' do
    @p_name = $p_name
    erb(:play)
    $player_choice = params[:rps]
    redirect('/result')
  end

  get '/result' do
    @p_name = $p_name
    @player_choice = $player_choice
    @p_name.option(@player_choice)
    erb(:result)
  end
end
