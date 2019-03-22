require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/sign_in' do
    session[:name]= params[:name]
    redirect '/games'
  end

  get '/games' do
    @name = session[:name]
    erb(:games)
  end

end
