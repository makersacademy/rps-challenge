require "sinatra/base"


class Rps < Sinatra::Base
  enable :sessions
  get "/" do 
    erb :index
  end

  post "/Multiplayer" do
    erb :multiplayer
  end

  post "/multiplayer_names" do 
    @player_1_name = params[:player_1_name]
    @player_2_name = params[:player_2_name]
    erb :multiplayer_names
  end 

  post "/Computer" do   
    erb :computer
  end

  post "/computer_name" do 

    session[:name] = params[:player_1_name]
    @player_1_name = session[:name]
    erb :computer_name
  end

  
  get "/computer_play" do
    @choice = session[:choice]
    @player_1_name = session[:name]
    erb :computer_play
  end


  post "/computer_play" do
    session[:choice] = params[:choice]
    redirect '/computer_play'
  end

  run! if app_file == $0

end