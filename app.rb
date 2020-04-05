require 'sinatra/base'
require './lib/player'

class Game < Sinatra::Base
  enable :sessions

  get '/' do 
    @welcome_message = 'Welcome to rock paper scissors'
    erb :index
  end 

  post '/names' do
    $player_1 = Player.new(params[:player_1])
    redirect '/play'
  end

get '/play' do 
  @player_1 = $player_1.name
  erb :play
end 

post '/round_1' do 
  $player_1.play(params[:attack])
  @attack = $player_1.attack
 
   @message = $player_1.play(params[:attack])
  if @message != nil
    message_array = @message.split("\n")
    @first_sentence = message_array[0]
    @second_sentence = message_array[1]
  end 
  

  
  erb :round_1

end 



  run if app_file == $0
end 