require 'sinatra'
require "sinatra/reloader"
require_relative './lib/game'
require './lib/player'

class RockPaperScissors < Sinatra::Application
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/players' do
    player_1_name = Player.new(params[:player_1])
    $rps = RPS.new(player_1_name)
    redirect '/play'
  end

  get '/play' do
    @rps = $rps
    erb :play
  end

  get '/choice' do
    $choice = params[:choice]
    @rps = $rps
    redirect '/play'
  end

  post '/rps' do
    @rps = $rps
    @choice = $choice
    erb :rps
  end

  run! if app_file == $0
end