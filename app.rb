require 'sinatra/base'
require 'sinatra/reloader'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  get "/" do
    erb :index
  end

  post '/name' do
    $player_name = params[:name]
    redirect '/play'
  end

  get '/play' do
    @player_name = $player_name
    erb :play
  end

  get '/rock' do
    @player_name = $player_name
    $result = Game.new.rock
    redirect '/result'
  end

  get '/paper' do
    @player_name = $player_name
    $result = Game.new.paper
    redirect '/result'
  end

  get '/scissors' do
    @player_name = $player_name
    $result = Game.new.scissors
    redirect '/result'
  end

  get '/result' do
    @result = $result
    erb :result
  end

  run! if app_file == $0
end
