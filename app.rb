require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/name' do
    session[:player_1_name] = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    @player_1_name = session[:player_1_name]
    erb(:play)
  end

  post '/attack' do
    @player_1_name = session[:player_1_name]
    @player_attack_method = params[:player_attack_method]
    erb(:attack)
  end

  run! if app_file == $0
end
