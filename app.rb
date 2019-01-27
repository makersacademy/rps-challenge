require 'sinatra/base'

class RockPaperScissors < Sinatra::Base

  enable :sessions

  get '/' do
    erb(:index)
  end

  post '/names' do 
    session[:player_one] = params[:player_one]
    redirect "/names"
  end

  get '/names' do 
    @player_one = session[:player_one]
    erb(:names)
  end 
  run! if app_file == $0
end
