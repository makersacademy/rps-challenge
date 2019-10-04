require 'sinatra/base'

class Game < Sinatra::Base

  get '/' do
    erb(:index)
  end

  post '/names' do
    $player_1 = params[:player_1_name]
    redirect '/play'
  end

  get '/play' do
    erb(:main_page)

  end

 post '/battle' do
   @player_answer = params[:player_answer]
   puts @player_answer
   @computer_answer = ["rock", "paper", "scissors"].sample
   if @player_answer == "rock" and @computer_answer == "paper"
     @result = "And the winner is: God"
   elsif @player_answer == "paper" and @computer_answer == "rock"
     @result = "And the winner is: " + $player_1
   elsif @player_answer == "scissors" and @computer_answer == "paper"
     @result = "And the winner is: " + $player_1
   elsif @player_answer == "paper" and @computer_answer == "scissors"
     @result = "And the winner is: God"
   elsif @player_answer == "rock" and @computer_answer == "scissors"
     @result = "And the winner is: " + $player_1
   elsif @player_answer == "scissors" and @computer_answer == "rock"
     @result = "And the winner is: God"
   else
     @result = "And the winner is: Both! Or neither, depending on your life outlook."
   end
   $result = @result
   redirect '/result'
 end

 get '/result' do
   erb(:result)
 end


end
