require 'sinatra/base'

class RPSBattle < Sinatra::Base
  enable :sessions

  get '/test' do
    'Testing infrastructure working!'
  end

  get '/' do
    erb :index
  end

  post '/player_name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    session[:move] = params[:move]
    erb :play
  end


  # get '/selection' do
  #   @player_name = session[:player_name]
  #   @value = session[:move]
  #   erb :selection
  # end

  run! if app_file == $0
end
