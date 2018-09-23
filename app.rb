require 'sinatra/base'
require_relative './lib/game'

class RPS < Sinatra::Base

  enable :sessions

  get '/' do
    erb :index
  end

  get '/add-player' do
    erb :add_player
  end

  get '/single' do
    erb :single
  end

  get '/multi' do
    erb :multi
  end

  get '/result' do
    p session
    erb :result
  end

  post '/move1' do
    session[:game].add_move(params[:move])
    session[:game].computer_move
    redirect '/result'
  end

  post '/save-name1' do
    session[:name1] = params[:name1]
    if params[:button] == "Start game against computer"
      session[:game] = Game.new(session[:name1],'Computer')
      redirect '/single'
    else
      redirect '/add-player'
    end
  end

  post '/save-name2' do
    session[:game] = Game.new(session[:name1],params[:name2])
    redirect '/multi'
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
