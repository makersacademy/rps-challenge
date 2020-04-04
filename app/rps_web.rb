require 'sinatra/base'

class RPSWeb < Sinatra::Base 
  enable :sessions

  get '/' do
    erb :index
  end

  post '/choose' do
    @player_name = params[:name]

    erb :choose
  end

  get '/choose' do
    erb :choose
  end

end