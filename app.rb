require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  enable :sessions 
  configure :development do
    register Sinatra::Reloader 
  end
 
  get '/' do
    erb(:index)
  end

  post '/play' do
    # @player_name = params[:player_name]
    # instead of using the dummy variables we store the player name in the session which is a short-term information store that lives on the server. 
    session[:player_name] = params[:player_name]
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name]
    erb(:play)
  end

  post '/result' do
    erb(:result)
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0
end