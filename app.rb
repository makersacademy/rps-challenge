require 'sinatra/base'
require './lib/player'
require './lib/rpsgame'

class RPS < Sinatra::Base 
  enable :sessions

  before do
    @rpsgame = RPSGame.instance 
  end
 
  get '/' do
    erb(:index)
  end

  post '/name' do
    @rpsgame = RPSGame.create(params[:player_1_name])
    redirect '/play'
  end

  get '/play' do
    #session[:name] = params[:name]
    @player_1_name = @rpsgame.player_1.name
    erb (:play) 
  end


  post '/option' do  
    @rpsgame = RPSGame.create(params[:player_1_name]) 
    redirect '/selection'
  end


  post '/selection' do 
    @lucy_the_computer_selection = @rpsgame.computer_selection 
    @player_1_selection = @rpsgame.player_selection(params[:selection])
    redirect '/result'  
  end 

  get '/selection' do
    @rpsgame = RPSGame.create(params[:player_1_name])
    erb(:selection)
  end

  post '/result' do
    session[:selection] = params[:selection] 
    #p 'session: ', session[:selection]
    @lucy_the_computer_selection = @rpsgame.computer_selection 
    redirect '/result'
  end 

  get '/result' do 
    #p 'session after: ', session[:session]
    @player_1_selection = session[:selection] 
    @lucy_the_computer_selection = @rpsgame.computer_selection 
    @determine_winner = @rpsgame.play(@player_1_selection, @lucy_the_computer_selection) 
    erb(:result) 
  end 


  run! if app_file == $0
end