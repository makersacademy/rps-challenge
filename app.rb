require 'sinatra/base'
require 'sinatra/reloader'
require './lib/players.rb'
require './lib/game.rb'


class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/player_name' do
    player_name = Players.new(params[:player_name])
    computer = Players.new(params[:computer_move])
    redirect '/play'
  end

  get '/play' do
    erb(:play) 
  end

  get '/player_move' do
    redirect '/result'
  end


  # start the server if ruby file executed directly
  run! if app_file == $0
end
