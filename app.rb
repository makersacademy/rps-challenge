require 'sinatra/base'

class Roshambo < Sinatra::Base

  enable :sessions
  set :session_secret, "i76t2oivmyoi3nti37n"

  get '/' do
    erb(:index)
  end

  post '/challenger_approaches' do
    session[:challenger_name] = params["player_name"]
    redirect '/warlords_rising'
  end

  get '/warlords_rising' do
    @ronin = session[:challenger_name]
    erb(:challenger)
  end

  post '/RO-SHAM-BO' do
    session[:player_choice] = params[:choice]
    redirect '/results'
  end

  get '/results' do
    "The Winner is:"
  end
end
