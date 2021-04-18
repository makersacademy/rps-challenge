class Game
  attr_reader :computer_choice

  @game = nil

  def initialize
    @computer_choice = ['rock', 'paper', 'scissors'][rand(3)]
  end

  def self.new_game(game)
    @game = game
  end

  def self.load_game
    @game
  end

  def draw?(choice)
    choice == @computer_choice
  end

  def win?(choice)
    case choice
    when 'rock'
      return @computer_choice == 'scissors'
    when 'paper'
      return @computer_choice == 'rock'
    when 'scissors'
      return @computer_choice == 'paper'
    end
  end
end