class Game

  attr_accessor :player, :computer

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def self.save_instance(player, computer)
    @instance = Game.new(player, computer)
  end

  def self.instance
    @instance
  end

  def result
    tie? ? :tie : (computer_wins? ? :lose : :win)
  end

  private

  def tie?
    player.weapon == computer.random_weapon
  end

  def computer_wins?
    rock_vs_paper || paper_vs_scissors || scissors_vs_rock
  end

  def rock_vs_paper
    player.weapon == 'Rock' && computer.random_weapon == 'Paper'
  end

  def paper_vs_scissors
    player.weapon == 'Paper' && computer.random_weapon == 'Scissors'
  end

  def scissors_vs_rock
    player.weapon == 'Scissors' && computer.random_weapon == 'Rock'
  end

end
