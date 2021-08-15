require 'sinatra'
require 'sinatra/reloader' if development?
require './lib/game.rb'

class RPS < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end
  
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:name] = params[:name]
    redirect '/play'
  end

  get '/play' do
    erb :play
  end

  post '/choice' do
    session[:player_choice] = params[:player_choice]
    redirect '/result'
  end

  get '/result' do
    game = Game.new(session[:name], session[:player_choice])
    @result = game.play
    @comp_choice = game.comp_choice
    erb :result
  end

  run! if app_file == $0
end
