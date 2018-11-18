class Game

  attr_reader :player, :enemy, :outcome
  WEAPONS = { rock: [['scissors', 'crushes'],['lizard', 'crushes']],
              paper: [['rock', 'covers'],['spock', 'disproves']],
              scissors: [['paper', 'cuts'],['lizard', 'decapitates']],
              lizard: [['paper', 'eats'],['spock', 'poisons']],
              spock: [['rock', 'vaporises'],['scissors', 'smashes']]
            }

  def initialize(player, enemy, outcome = [])
    @player = player
    @enemy = enemy
    @outcome = outcome
  end

  def self.create(player, enemy)
    @game = Game.new(player, enemy)
  end

  def find_winner
    @outcome.clear
    create_outcome
  end

  def self.instance
    @game
  end

  private

  def create_outcome
    if WEAPONS[@player.choice.to_sym][0][0] == @enemy.choice
      @outcome << 'YOU WIN'; @outcome << WEAPONS[@player.choice.to_sym][0][1]
    elsif WEAPONS[@player.choice.to_sym][1][0] == @enemy.choice
      @outcome << "YOU WIN"; @outcome << WEAPONS[@player.choice.to_sym][1][1]
    elsif WEAPONS[@enemy.choice.to_sym][0][0] == @player.choice
      @outcome << 'YOU LOSE'; @outcome << WEAPONS[@enemy.choice.to_sym][0][1]
    elsif WEAPONS[@enemy.choice.to_sym][1][0] == @player.choice
      @outcome << "YOU LOSE"; @outcome << WEAPONS[@enemy.choice.to_sym][1][1]
    else
      @outcome << "IT'S A DRAW"
    end
  end

end
