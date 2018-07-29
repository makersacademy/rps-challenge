class Logic < Sinatra::Base
    enable :sessions
    def self.find_winner 
    p1 = session[:player_1_choice]
    p2 = session[:player_2_choice]
    
    if p1 == p2 then winner = "it's a draw"
    elsif p1 == "rock"
      p2 == "scissors" ? 
        winner = "You win" : winner = "You lose"
    elsif p1 == "paper"
      p2 == "rock" ? winner = "You win" : winner = "You lose"
    elsif p1 == "scissors"
      p2 == "paper" ? winner = "You win" : winner = "You lose"
      end 
  end 
end 

