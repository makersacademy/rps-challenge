require 'sinatra'

class RPS < Sinatra::Base

  enable :session

  get '/' do
    erb :index
  end

  post '/name' do
    session[:player_name] = params[:player_name]
    session[:player_name]
  end


run! if $0 == __FILE__
end
