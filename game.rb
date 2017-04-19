require 'sinatra/base'
require_relative 'lib/turn'

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
    @go = Turn.new(session)

    @player_name = session[:player_name]
    @player_choice = session[:player_choice]
    @opposition_choice = session[:opposition_choice]
    erb :play
  end

  post '/play' do
    session[:player_choice] = :rock
    session[:opposition_choice] = :rock
    redirect '/play'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
