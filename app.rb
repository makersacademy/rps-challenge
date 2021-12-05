require 'sinatra/base'
require 'sinatra/reloader'

class Rock_paper_scissors < Sinatra::Base

set :views, File.dirname(__FILE__) + '/views'
  set :lib, File.dirname(__FILE__) + '/lib'

  enable :sessions

  configure :development do
    register Sinatra::Reloader
  end

  run! if app_file == $0

    # display form
  get '/' do
   erb :index
  end
    
    # store the name in session then redirect
  post '/save_name' do
    session[:player_name] = params[:player_name]
    redirect '/choose_tool'
  end
    
    # display rock, paper, scissors radio options
  get '/choose_tool' do
    @player_name = session[:player_name]
    erb :choose_tool
  end

   # store the chosen tool
  post '/save_tool' do
    session[:tool] = params[:tool]
    redirect '/play'
  end

  get '/play' do
    @tool = session[:tool]
    @player_name = session[:player_name]
    @computer_tool = ['Rock','Paper','Scissors'].sample
    erb :play
  end

end
