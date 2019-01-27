class Game
  attr_reader :player, :computer

  def self.create(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def initialize(player, computer)
    @player = player
    @computer = computer
  end

  def round_winner?
   beats = {
     'Rock' => ['Scissors', 'Lizard'],
     'Paper' => ['Spock', 'Rock'],
     'Scissors' => ['Lizard', 'Paper'],
     'Lizard' => ['Spock', 'Paper'],
     'Spock' => ['Rock', 'Scissors']
   }
   if player.move == computer.move
     return "Draw! Nobody "
   end
   if beats[player.move].include?(computer.move)
     return @player.name
   else return "Computer"
   end
 end
end
