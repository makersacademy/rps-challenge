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
    @shape_choice = session[:shape_choice]
    @cpu_choice = "Rock"
    erb(:names)
  end 

  post '/game' do 
    session[:shape_choice] = params[:shape_choice]
    redirect "/names"
  end 

  run! if app_file == $0
end
