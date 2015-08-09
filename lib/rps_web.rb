require 'sinatra/base'
require_relative 'rps.rb'

class RPSWeb < Sinatra::Base

  enable :sessions

  set :views, Proc.new { File.join(root, "..", "views") }

  get '/' do
    erb :index
  end

  get '/gamesetup' do
    erb :gamesetup
  end

  post '/gamesetup' do
    session[:playername] = params[:playername]
    redirect '/gamesetup' if session[:playername] == ""
    redirect '/game'
  end

  get '/game' do
    $game = Game.new
    erb :game
  end

  post '/result' do
    @weapon = params[:weapon].to_sym
    @result = $game.play(@weapon)
    erb :result
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
