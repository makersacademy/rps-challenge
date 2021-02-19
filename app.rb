require 'sinatra'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  get '/name' do
    session[:player_name] = params[:player_name]
    redirect '/play'
  end


  # get '/play' do
  #
  #
  # end
end
