require 'sinatra/base'
require 'sinatra/reloader'
require_relative './lib/game'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    $name = params[:name]
    redirect to('/play')
  end

  get '/play' do
    @name = $name
    erb :play
  end

  post '/move' do
    $move = params[:move]
    redirect to('/outcome')
  end

  get '/outcome' do
    @game = Game.new
    @game.cpu_move
    @result = @game.gameplay($move)
    erb :outcome
  end

  run! if app_file == $0
end
