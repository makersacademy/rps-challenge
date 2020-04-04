require 'sinatra/base'

class RPSWeb < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/name' do
    @player_name = params[:name]
    #redirect '/choose'
    erb :choose
  end

  get '/choose' do
    erb :choose
  end

end