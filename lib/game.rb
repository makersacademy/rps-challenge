require './lib/computer'

class Game

  attr_reader :player, :computer, :result

  def initialize(player = Player.new, computer = Computer.new)
    @player = player
    @computer = computer
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def logic(choice)
    @result = 'Draw, Try again!' if choice == @computer.choice
    @result = 'You Win!' if choice == 'Scissors' && @computer.choice == 'Paper'
    @result = 'You Win!' if choice == 'Rock' && @computer.choice == 'Scissors'
    @result = 'You Win!' if choice == 'Paper' && @computer.choice == 'Rock'
    @result = 'You Lose!' if choice == 'Scissors' && @computer.choice == 'Rock'
    @result = 'You Lose!' if choice == 'Rock' && @computer.choice == 'Paper'
    @result = 'You Lose!' if choice == 'Paper' && @computer.choice == 'Scissors'
  end
end
