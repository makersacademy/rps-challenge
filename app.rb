require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/player'
require_relative './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/enter_names' do
  $game = Game.new(Player.new(params[:player_name]))
  redirect '/show_names'
  end

  get '/show_names' do
    erb(:show_names)
  end

  get '/rps' do
    erb(:rps)
  end

  get '/selection' do
    erb(:selection)
  end

  get '/rock' do
    $game.player_choice=(:rock)
    redirect '/selection'
  end

  get '/scissors' do
    $game.player_choice=(:scissors)
    redirect '/selection'
  end

  get '/paper' do
    $game.player_choice=(:paper)
    redirect '/selection'
  end

  get '/result' do
    if $game.result == :win
      erb(:win)
    elsif $game.result == :draw
      erb(:draw)
    else
      erb(:lose)
    end
  end

  run! if app_file == $0
end

