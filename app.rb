require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    @name = session[:name]
    erb(:play)
  end

  post '/result' do
    @choice = params[:choice]
    game = Game.new(@choice)
    @result = game.play
    erb(:result)
  end

end
