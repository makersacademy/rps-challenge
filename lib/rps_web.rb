require 'sinatra/base'
require "sinatra/session"

class RockPaperScissors < Sinatra::Base
  # force port 3000 for Nitrous
  configure :development do
    set :bind, '0.0.0.0'
    set :port, 3000
  end

  enable :sessions
  set :views, proc { File.join(root, '..', 'views') }
  set :public, proc { File.join(root, '..', 'public_folder') }

  get '/' do
    erb :index
  end

  get '/computer' do
    erb :enter_name
  end
  
  get '/play_computer' do
    @name = params[:name] 
    erb :play_computer
  end
  
  post '/play_computer' do
    @choice = params[:choice]
    @computer = rand(3)
    erb :computer_result
  end
  
  get '/friend' do
    erb :enter_name_2
  end
  
  get '/play_friend' do   
    @name1 = params[:name1]
    @name2 = params[:name2]
    erb :play_friend
  end
  
  post '/play_friend' do
    @choice1 = params[:choice1]
    erb :play_friend2
  end
  
  get '/friend_result' do
    @choice2 = params[:choice2]
    erb :friend_result
  end

  get '/spock' do
    erb :enter_name_spock
  end
  
  get '/play_spock' do
    @name = params[:name] 
    erb :play_spock
  end
  
  post '/play_spock' do
    @choice = params[:choice]
    @computer = rand(5)
    erb :spock_result
  end
  
  # start the server if ruby file executed directly
  run! if app_file == $0

end