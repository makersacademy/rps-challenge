require_relative 'player'
require_relative 'computer'
class Game

  attr_reader :player_1

  def initialize(player_1)
    @player_1 = player_1
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def play(p1_choice, p2_choice)
    winmap = { 'Scissors' => 'Paper', 'Paper' =>  'Rock', 'Rock' => 'Scissors'}
      if p1_choice == p2_choice
        "It's a draw!"
      elsif winmap[p1_choice] == p2_choice
        "Congrats! You won!"
      else
        "Sorry, you lost!"
      end
  end
end
