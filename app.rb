require 'sinatra/base'

class RpsGame < Sinatra::Base

 enable :sessions

  get '/' do
    erb :index
  end

  post '/registering' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb :play
  end

  post '/selecting-option' do
    session[:option] = [params[:option_rock],params[:option_scissors],params[:option_paper]].find{|param| !param.nil?}
    redirect '/option'
  end

  get '/option' do
    @option_rock = session[:option]
    erb :option
  end

  post '/game-choice' do
    redirect '/play'
  end

  run! if app_file == $0
end
