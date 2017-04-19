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

    def add_player1_choice(choice)
      @player_1_choice = choice
    end

    def play_game(player1_choice, player2_choice)
      if player1_choice == player2_choice then "draw"
      else
        play_game_with_no_draw(player1_choice, player2_choice)
      end
    end

    def turn_won(player)
      player.add_win
    end

    attr_reader :player_1_choice

    private

    def play_game_with_no_draw(player1_choice, player2_choice)
      if player1_choice == :rock then rock_chosen(player2_choice)
      elsif player1_choice == :scissors then scissors_chosen(player2_choice)
      elsif player1_choice == :paper then paper_chosen(player2_choice)
      elsif player1_choice == :spock then spock_chosen(player2_choice)
      elsif player1_choice == :lizard then lizard_chosen(player2_choice)
      end
    end

    def rock_chosen(player2_choice)
      if player2_choice == :scissors or player2_choice == :lizard
        turn_won(player_1)
      else turn_won(player_2)
      end
    end

    def scissors_chosen(player2_choice)
      if player2_choice == :paper or player2_choice == :lizard
        turn_won(player_1)
      else turn_won(player_2)
      end
    end

    def paper_chosen(player2_choice)
      if player2_choice == :rock or player2_choice == :spock
        turn_won(player_1)
      else turn_won(player_2)
      end
    end

    def spock_chosen(player2_choice)
      if player2_choice == :scissors or player2_choice == :rock
        turn_won(player_1)
      else turn_won(player_2)
      end
    end

    def lizard_chosen(player2_choice)
      if player2_choice == :paper or player2_choice == :spock
        turn_won(player_1)
      else turn_won(player_2)
      end
    end
end
