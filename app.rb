require 'sinatra'
require 'sinatra/base'

class RPSGame < Sinatra::Base

  enable :session

  get '/' do
    erb(:index)
  end

  post '/name' do
   @player = params[:player]
    erb(:play)
  end

  get '/play' do
    @player = session[:player]
    erb(:play)
  end

  run! if app_file == $0

end
