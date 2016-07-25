require 'sinatra/base'
require './lib/game.rb'
require './lib/computer.rb'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @game = Game.new(session[:player_name], session[:player_selection], session[:computer_selection])
    erb :play
  end

  post '/play' do
    session[:player_selection] = params[:player_selection].to_sym
    session[:computer_selection] = Computer.new.selection
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
