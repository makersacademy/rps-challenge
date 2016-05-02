require_relative 'computer'
require_relative 'player'

class Game
  RULES = { rock: :scissors,
          paper: :rock,
          scissors: :paper }

attr_reader :player, :computer
  def initialize(computer=Computer, player)
    @player = player
    @computer = computer
    @winning_moves =  {
        :rock => :paper,
        :paper => :scissors,
        :scissors => :rock
      }
  end
  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

    def select_winner(player_move)
        other_move= @computer.computer_move
        if player_move == other_move
          :draw
        elsif @winning_moves[player_move] == other_move
          :looser
        else
          :winner
        end
    end
end
