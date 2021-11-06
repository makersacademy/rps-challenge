require "sinatra/base"
require "sinatra/reloader"

class RockPaperScissors < Sinatra::Base
  enable :sessions
  configure :development do
    register Sinatra::Reloader
  end

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name]
    session[:computer_name] = params[:computer_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    @computer_name = session[:computer_name]
    erb :play
  end
end
