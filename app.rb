require 'sinatra/base'
require './lib/player'
require './lib/rpsgame'

class RPS < Sinatra::Base 
 
  get '/' do
    erb(:index) 
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name]) 
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb (:play) 
  end


  post '/option' do 
    $player_1 = Player.new(params[:player_1_name]) 
    redirect '/selection'
  end

  get '/option' do
    erb(:option)
  end

  post '/selection' do 
    $player_1_selection = params[:selection] 
    $lucy_the_computer_selection = Player.new('LucyTheComputer').random_selection 
    redirect '/result' 
  end 

  get '/selection' do
    erb(:selection)
  end

  post '/result' do
    $player_1_selection = params[:selection] 
    $lucy_the_computer_selection = Player.new('LucyTheComputer').random_selection 
    redirect '/result'
  end 

  get '/result' do 
    @player_1_selection = $player_1_selection
    @lucy_the_computer_selection = $lucy_the_computer_selection
    @rps_game = RPSGame.new
    @result = @rps_game.play(@player_1_selection, @lucy_the_computer_selection)
    erb(:result)  
  end

  run! if app_file == $0
end