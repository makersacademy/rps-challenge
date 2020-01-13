require './lib/player_name'

class RPSGame
    attr_reader :current_turn, :game, :player1, :player2, :rules, :computer_option


    def self.create(player_1, player_2)
        @game = RPSGame.new(player_1, player_2)
    end
      
    def self.instance
        @game
    end

    def initialize(player_1, player_2) 
        @player1 = player_1  
        @player2 = player_2
        @rules = {rock: :scissor, paper: :rock, scissior: :paper}
        @computer_option = @rules.keys.sample
    end

    def moves(p1move, p2move)
        if p1move == p2move
            "It's a draw"
        elsif p1move == "rock" && p2move == "scissors"
            "Player_one Won, Yay you!"
        elsif p1move == "paper" && p2move == "rock"
            "Player_one Won, Yay you!"
        elsif p1move == "scissors" && p2move == "paper"
            "Player_one Won, Yay you!"
        elsif p2move == "rock" && p1move == "scissors"
            "Player_one Won, Yay you!"
        elsif p2move == "paper" && p1move == "rock"
            "Player_one Won, Yay you!"
        elsif p2move == "scissors" && p1move == "paper"
            "Player_one Won, Yay you!"
        end
    end

end