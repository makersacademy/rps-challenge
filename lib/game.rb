require_relative 'player'

class Game

  attr_reader :player, :player_1, :player_2

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def auto_turn
    ['Rock', 'Paper', 'Scissors'].sample
  end

#For sure find a better way of doing this!
  def result
    if player_1.choice == 'Rock' && player_2.choice == 'Scissors'
      return "#{player_1.name} wins!"
    elsif player_1.choice == 'Paper' && player_2.choice == 'Rock'
      return "#{player_1.name} wins!"
    elsif player_1.choice == 'Scissors' && player_2.choice == 'Paper'
      return "#{player_1.name} wins!"
    elsif player_1.choice == player_2.choice
      return 'DRAW!'
    else
      return "#{player_2.name} wins!"
    end
  end
end
