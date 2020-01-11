require 'sinatra/base'
require './lib/player'

class RPS < Sinatra::Base 
 
 
  get '/' do
    erb(:index) 
  end

  post '/name' do
    $player_1 = Player.new(params[:player_1_name]) # name entered by me is passed as an arg and stored in g variable $player_1
    redirect '/play'
  end

  get '/play' do
    @player_1_name = $player_1.name
    erb (:play) # displays emily vs lucy the computer   lets go    click to see your options and button to bring us to that page - option
  end


  post '/option' do # displays the button that says - click to see your options 
    $player_1 = Player.new(params[:player_1_name]) 
    redirect '/selection'
  end

  get '/option' do
    erb(:option)
  end

  post '/selection' do # this page displays our rock paper scissors buttons and brings us to result page
    $player_1_selection = params[:selection] # what i choose is stored in $player_1_selection 
    $lucy_the_computer_selection = Player.new('LucyTheComputer').random_selection # not skinny controller
    redirect '/result' # what the computer selects is stored in $lucy_the_computer_selection
  end 

  get '/selection' do
    erb(:selection)
  end

  post '/result' do
    $player_1_selection = params[:selection] # what i choose is stored in $player_1_selection 
    $lucy_the_computer_selection = Player.new('LucyTheComputer').random_selection # not skinny controller
    redirect '/result'
  end 

  get '/result' do # displays the result of my selection and the computers random selection
    @player_1_selection = $player_1_selection
    @lucy_the_computer_selection = $lucy_the_computer_selection
    erb(:result)  # currently not display the option I selected or the randomized option for the computer - not interpolating
  end



  run! if app_file == $0
end