require_relative 'player'

class Game
  attr_reader :players

  def initialize(player1, player2)
    @choices = ['Rock', 'Paper', 'Scissors']
    @players = [player1, player2]
  end

  def computer_choice
    @choices[rand(3)]
  end

  def player_choices
    [players[0].choice, players[1].choice]
  end

  def self.create_game(player1, player2 = Player.new('Computer'))
    @game = Game.new(player1, player2)
  end

  def self.get_game
    @game
  end

end
