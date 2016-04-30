require_relative 'player'
require_relative 'computer'

class Game
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

attr_reader :player, :computer
  def initialize(computer, player)
    @computer = computer
    @player = player
    @winning_moves =  {
        :Rock => :Paper,
        :Paper => :Scissors,
        :Scissors => :Rock
      }
  end
  def self.create(computer, player)
    @game = Game.new(computer, player)
  end

  def self.object
    @game
  end

    def select_winner(player_move)
        other_move= @computer.computer_move
         puts other_move
        if player_move == other_move
          'draw'
        elsif @winning_moves[player_move] == other_move
          'losser'
        else
          'winner'
        end
    end
end
