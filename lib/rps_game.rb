class Game

  def self.new_game(player, computer)
    @game = Game.new(player, computer)
    @game
  end

  WIN = [
    ['Rock', 'Scissors'],
    ['Paper', 'Rock'],
    ['Scissors', 'Paper']
  ]

  DRAW = [
    ['Rock', 'Rock'],
    ['Paper', 'Paper'],
    ['Scissors', 'Scissors']
  ]

  attr_reader :player, :computer, :choices

  def initialize(player, computer)
    @player = player
    @computer = computer
    @choices = []
  end

  def self.start
    @game
  end

  def choices(player_choice, computer_choice)
    @choices << player_choice
    @choices << computer_choice
  end

  def player_win?
    WIN.include?(@choices)
  end

  def draw?
    DRAW.include?(@choices)
  end

  def print_winner
      return "It\'s a draw" if draw?
      return @player.name if player_win?
      @computer.name
  end
end
