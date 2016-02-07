require 'sinatra/base'
require './lib/player.rb'

class Game < Sinatra::Base

  enable :sessions

  get '/' do
    p @name
    @name = session[:name]
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect to('/')
  end

  post '/game' do
    @player_choice = params[:options]
    @player = Player.new(choice:@player_choice)
    erb(:game)
  end
  run! if app_file == $0
end
