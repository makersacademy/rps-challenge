class Game
  attr_reader :player, :computer, :winner
  # attr_accessor :choice

  def initialize(player, computer = Computer.new, referee_class = Referee)
    @player = player
    @computer = computer
    @referee = referee_class.new(player, computer)
  end

  def chose(choice)
    @player.make_decision(choice)
  end

  def complete
    @winner = @referee.declare_winner
  end

  def self.instance
    @game
  end

  def self.create(player)
    @game = Game.new(player)
  end

# private
#
#   def draw?
#     player.choice == computer.choice
#   end
#
#   def player_win?
#
#     win_condisiton1 || win_condisiton2 || win_condisiton3
#
#   end
#
#   def win_condisiton1
#
#     player.choice == 'Paper' && computer.choice == 'Rock'
#
#   end
#
#   def win_condisiton2
#     player.choice == 'Scissors' && computer.choice == 'Paper'
#   end
#
#   def win_condisiton3
#     player.choice == 'Rock' && computer.choice == 'Scissors'
#   end
end
