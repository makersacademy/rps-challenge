require 'sinatra/base'
require 'sinatra/reloader'
require './lib/game'

class Rps < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
    also_reload './lib/game.rb'
  end

  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player] = params[:player]
    redirect to '/play'
  end

  get '/play' do
    @player = session[:player]
    erb :play
  end

  post '/choice' do
    session[:choice] = params[:choice]
    redirect to '/result'
  end

  get '/result' do
    @user_choice = session[:choice]
    @game = Game.new
    @computer_choice = @game.make_choice
    erb @game.give_result(@user_choice, @computer_choice)
  end

  run! if app_file == $0
end