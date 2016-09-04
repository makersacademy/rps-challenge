class Game

    def initialize(player1, player2)
      @players = [player1, player2]
    end

    def self.create(player1, player2)
      @game = Game.new(player1, player2)
    end

    def self.instance
      @game
    end

    def player_1
      @players.first
    end

    def player_2
      @players.last
    end

    def play_game(player1_choice, player2_choice)
      if player1_choice == player2_choice then "draw"
      elsif player1_choice == :rock and player2_choice == :scissors
        turn_won(player_1)
        # define_winner(turn_lost(player_2))
      elsif player1_choice == :scissors and player2_choice == :paper
        turn_won(player_1)
        # define_winner(turn_lost(player_2))
      elsif player1_choice == :paper and player2_choice == :rock
        turn_won(player_1)
        # define_winner(turn_lost(player_2))
      else
        turn_won(player_2)
        # define_winner(turn_lost(player_1))
      end
    end

    def turn_won(player)
      player.add_win
    end

    # private
    #
    # def define_winner(player)
    #   player == player_1 ? player_2 : player_1
    # end
end
