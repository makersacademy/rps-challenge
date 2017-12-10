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

  def get_choices
    [players[0].choice, players[1].choice]
  end

  def set_choices(choice1, choice2 = computer_choice)
    players[0].choice = choice1
    players[1].choice = choice2
  end

  def self.create_game(player1, player2 = Player.new('Computer'))
    @game = Game.new(player1, player2)
  end

  def self.get_game
    @game
  end

end
