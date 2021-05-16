require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    erb(:play)
  end

  post '/choice' do
    @game = Game.create(params[:player_choice], Computer.new.choice)
    redirect '/result'
  end

  get '/result' do
    @player_name = session[:player_name]
    @game = Game.instance
    erb(:result)
  end

end