require 'sinatra/base'

class RPS < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/choices' do
    @player_name = session[:player_name]
    session[:result] = params[:rock_button] || params[:paper_button] || params[:scissor_button]
    redirect '/show_result'
  end

  get '/show_result' do
    @result = session[:result]
    erb :game_over
  end

  run! if app_file == $0
end
