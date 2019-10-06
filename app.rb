require 'sinatra/base'
require_relative 'lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/test' do
    'Hello!'
  end

  get '/' do
    erb :index
  end

  post '/name' do
    @game = Game.create(params[:player_name])
    @game = Game.instance
    redirect '/greet'
  end
  
get '/greet' do
  @game = Game.instance
  erb :greet
end

get '/play' do
  @game = Game.instance
  erb :play
end

run! if app_file == $PROGRAM_NAME
end