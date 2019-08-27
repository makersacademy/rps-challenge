require 'sinatra/base'
class RPS < Sinatra::Base
  enable :sessions
  
  get '/' do
    'Site is up!'
  end

  get '/names' do
    erb(:index)
  end
  post '/names' do
    session[:player_1_name] = params[:player_1_name]
    session[:player_2_name] = params[:player_2_name]
    redirect '/play'
  end
  get '/play' do
    @player_1_name = session[:player_1_name]
    @player_2_name = session[:player_2_name]
    erb :play
  end
  post '/namesAI' do
    session[:player] = params[:player]
    session[:AI] = params[:AI]
    redirect '/playAI'
  end
  get '/playAI' do
    @player = session[:player]
    @AI = session[:AI]
    erb :playAI
  end
  # start the server if ruby file executed directly
  run! if app_file == $0
end