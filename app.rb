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
    redirect '/play'
  end
  
  get '/play' do
    @name1 = session[:name1]
    erb(:play)
  end 

  post '/moves' do
    session[:move1] = params[:first_move]
    redirect '/random_move'
  end 

  get '/random_move' do 
    @move1 = session[:move1]
    @name1 = session[:name1]
    erb(:random_move)
  end 

  get '/outcome' do 
    @move1 = session[:move1]
    @name1 = session[:name1]  
    erb(:outcome)
  end 
  
  # # Start the server if this file is executed directly (do not change the line below)
  run! if app_file == $0
end