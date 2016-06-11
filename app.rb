require 'sinatra/base'
require_relative 'lib/rps.rb'

class MyApp < Sinatra::Base
enable :sessions
  get '/' do
    erb(:index)
  end

get '/game_start' do
  session[:game] = RPS.new(params[:name])
  erb(:game)
end

get '/game_play' do
  @choice = params[:Select_Box]
  @answer = session[:game].choose
  erb(:game)
end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
