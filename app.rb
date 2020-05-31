require 'sinatra'
require_relative './lib/result.rb'

class RPSGame < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:name)
  end

  post '/name' do
    session[:name] = params[:name]
    session[:name_2] = params[:name_2]
    redirect('/move')
  end

  get '/move' do
    @name = session[:name]
    @name_2 = session[:name_2]
    erb(:move)
  end

  post '/selected_move' do
    session[:player_move] = params[:move]
    redirect('/result')
  end

  get '/result' do
    @player_move = session[:player_move]
    @name = session[:name]
    @result = Result.new.result(@player_move)
    erb(:result)
  end

  run! if app_file == $0

end
