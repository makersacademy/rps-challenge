require 'sinatra/base'
require 'sinatra/reloader'

class RockPaperScissors < Sinatra::Base
  configure :development do
    register Sinatra::Reloader
  end

  enable :sessions # short-term information store. It allows the server to store basic pieces of information, like the name of the current user, across multiple requests. In Sinatra, session is a Hash, and you can set values for its keys. session is most often used to store details of a logged in user.

  get '/' do
    erb :index
  end

  post '/names' do
    session[:player_name] = params[:player_name] 
    redirect '/play' #issues an 'internal GET request' within the server. Now, when we submit the form, we can see a POST request with the form params, followed by a GET request(the redirect). The internal GET request will activate the '/play' action which will render the play.erb view
  end

  post '/play' do 
    session[:player_choice] = params[:player_choice]
    session[:computer_choice] = ['Rock', 'Paper', 'Scissors'].sample
    redirect '/play'
  end

  get '/play' do
    @player_name = session[:player_name] 
    @player_choice = session[:player_choice]
    @computer_choice = session[:computer_choice]
    erb :play
  end

  run! if app_file == $0
end