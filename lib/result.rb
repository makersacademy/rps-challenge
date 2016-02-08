class Result < Computer

  WINNER = {

  "ROCK ROCK" => "DRAW",
  "ROCK PAPER" => "COMPUTER WINS",
  "ROCK SCISSORS" => "YOU WIN",
  "PAPER PAPER" => "DRAW",
  "PAPER ROCK" => "YOU WIN",
  "PAPER SCISSORS" => "COMPUTER WINS",
  "SCISSORS SCISSORS" => "DRAW",
  "SCISSORS ROCK" => "COMPUTER WINS",
  "SCISSORS PAPER" => "YOU WIN",

     }

    def initialize
      @winner = winner
    end


     def combine_results
       "#{$player_name.weapon} #{$computer_weapon}"
     end

     def return_winner
       winner = WINNER[combine_results]
     end

     attr_reader :winner

end
