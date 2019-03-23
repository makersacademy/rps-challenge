require 'sinatra/base'

class RPS < Sinatra::Base
  get '/' do
    erb :index
  end

  post '/names' do
    @name = params[:name]
    erb :play
  end

  post '/play' do
    # @turn = Turn.new


    @move = params[:move]
    @computer_move = computer_move
    @result = game
    erb :result
  end

# how can i move these to a ruby file within lib directory? => i can test them

  def computer_move
    ['Rock', 'Paper', 'Scissors'].sample
  end

  def game(user = @move, computer = @computer_move)

    case user
     when "Rock"

       if computer == "Scissors"
     	   "You win!"
       elsif computer == "Paper"
     	   "You lose!"
     	 else
         "It's a draw"
     	 end

   when "Paper"

     if computer == "Scissors"
   	   "You lose!"
     elsif computer == "Rock"
   	   "You win!"
   	  else
   	    "It's a draw"
   	 end

  when "Scissors"

    if computer == "Paper"
      "You win!"
    elsif computer == "Rock"
      "You lose!"
    else
      "It's a draw"
    end
   end
  end

  run! if app_file == $0
end
