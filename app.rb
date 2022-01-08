require 'sinatra/base'
require 'sinatra/reloader'

class MyApp < Sinatra::Base
  enable :sessions 

  configure :development do
    register Sinatra::Reloader
    also_reload 'lib/index.erb'
    also_reload 'lib/play.erb'
  end

  # our routes would go here
  get '/' do 
    erb(:index)
  end

  post '/names' do
    session[:name1] = params[:name1]
    @name1 = session[:name1]
    erb(:play)
  end
  
  get '/play' do
    @player_name = session[:name1]
    erb(:play)
  end 


  post '/moves' do
    @name1 = session[:name1]
    @move1 = params[:first_move]
    erb(:second_move)
  end 
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end