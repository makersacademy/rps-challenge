require './lib/computer'

class Game

  attr_reader :player, :computer

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

  def logic
    'Draw, Try again!' if @choice == computer.choice
    'You Win!' if @choice == 'Scissors' && computer.choice == 'Paper'
    'You Win!' if @choice == 'Rock' && computer.choice == 'Scissors'
    'You Win!' if @choice == 'Paper' && computer.choice == 'Rock'
    'You Lose!' if @choice == 'Scissors' && computer.choice == 'Rock'
    'You Lose!' if @choice == 'Rock' && computer.choice == 'Paper'
    'You Lose!' if @choice == 'Paper' && computer.choice == 'Scissors'
  end
end
