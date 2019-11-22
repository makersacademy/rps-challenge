class Game

  RULES = { :rock => { :rock => "It's a draw", :paper => "Player 2 wins", :scissors => "Player 1 wins" },
            :paper => { :paper => "It's a draw", :rock => "Player 1 wins", :scissors => "Player 2 wins" },
            :scissors => { :scissors => "It's a draw", :rock => "Player 1 wins", :paper => "Player 2 wins" }
          }

  attr_reader :player1, :player2, :winner

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
  end

  def self.new_game(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.current_game
    @game
  end

  def who_wins
    player_1_move = @player1.move
    player_2_move = @player2.move
    @winner = RULES[player_1_move][player_2_move]
  end

end
