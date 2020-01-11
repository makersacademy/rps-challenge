require 'sinatra/base'

class RPS < Sinatra::Base 
  enable :sessions 
  # get '/' do
    # "Let's play Rock Paper Scissors!"
  # end

  get '/' do
    erb(:index) # shows the page with form for entering names 
  end

  post '/names' do
    @player_1_name = params[:player_1_name] # emily is assigned to player_1_name
    @player_2_name = params[:player_2_name] # lucy us assigned to player_2_name
    erb(:play)
  end

  #get '/play' do
   # erb(:play) # this displays Emily vs. Lucy
  #end



  run! if app_file == $0
end