$VERBOSE=nil
require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do
    p params
    session[:player_1_name] = params[:player_1]
    redirect '/rules'
  end

  get '/rules' do
    @player_1 = session[:player_1_name]
    erb(:rules)
  end

  get '/play' do
    erb(:play)
  end

  # start the server if ruby file executed directly
  run! if app_file == $0
end
