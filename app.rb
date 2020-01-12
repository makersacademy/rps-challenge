require 'sinatra/base'
require './lib/player'
require './lib/rpsgame'

class RPS < Sinatra::Base 

  before do
    @rpsgame = RPSGame.instance 
  end
 
  get '/' do
    erb(:index) # shows our home page
  end

  post '/name' do
    #$player_1 = Player.new(params[:player_1_name])  # was saving the name player enters in g variable
    @rpsgame = RPSGame.create(params[:player_1_name]) # replaces global variable now the game object
    redirect '/play'
  end

  get '/play' do
    #@player_1_name = $player_1.name
    @player_1_name = @rpsgame.player_1.name # player_1's name of game stored in @player_1_name
    erb (:play) 
  end


  post '/option' do 
    #$player_1 = Player.new(params[:player_1_name]) 
    @rpsgame = RPSGame.create(params[:player_1_name]) 
    redirect '/selection'
  end


  post '/selection' do 
    #$player_1_selection = params[:selection] 
    @lucy_the_computer_selection = @rpsgame.computer_selection 
    @rpsgame.player_selection(params[:selection]) # name input in forms in selection view corresponds to this params key
    redirect '/result'  
  end 

  get '/selection' do
    @rpsgame = RPSGame.create(params[:player_1_name])
    erb(:selection)
  end

  post '/result' do
    #$player_1_selection = params[:selection] 
    #$lucy_the_computer_selection = Player.new('LucyTheComputer').random_selection 
    @player_1_selection = @rpsgame.player_selection(params[:selection]) 
    @lucy_the_computer_selection = @rpsgame.computer_selection # random
    redirect '/result'
  end 

  get '/result' do 
    #@player_1_selection = $player_1_selection
    #@lucy_the_computer_selection = $lucy_the_computer_selection
    #@rps_game = RPSGame.new(player_1) 
    @player_1_selection = @rpsgame.player_selection(params[:selection])  
    @lucy_the_computer_selection = @rpsgame.computer_selection # if you call random_selection on the game instance it will give either rock paper scissors and assign to lucythecomputer
    @determine_winner = @rpsgame.play(@player_1_selection, @lucy_the_computer_selection) 
    erb(:result)  # the result is the result of calling play on game instance - which takes as two args player and computer's selection 
  end # and checks to see who wins or whether its a tie 

  run! if app_file == $0
end