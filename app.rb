require 'sinatra/base'

class RockPaperScissors < Sinatra::Base
  enable :sessions

  get '/' do
    erb :index
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/names' do
    @player_name = params[:player_name]
    erb :play
  end

  post '/choice' do
    @choice = params[:choice]
    erb :choice
  end

  get '/computer_choice' do
    @computer_choice = ["Rock","Paper","Scissors"].sample
    erb :computer_choice
  end

end
