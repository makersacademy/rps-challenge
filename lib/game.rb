require_relative 'winner.rb'

class Game
  def initialize(player,winner_klass)
    @player = player
    @winner_klass = winner_klass
  end

  def player_name
    @player.name
  end

  def set_player_weapon(weapon)
    @player.choice(weapon)
  end

  def player_weapon
    @player.weapon
  end

  def set_weapon
    @weapon = game_choice
  end

  def weapon
    @weapon
  end

  def who_won(player_weapon=self.player_weapon,weapon=self.weapon)
    @winner = @winner_klass.new(player_weapon,weapon)
    @winner.outcome
  end

 private

  def game_choice
    case Kernel.rand
      when 0.0...0.2 then 'Rock'
      when 0.2...0.4 then 'Paper'
      when 0.4...0.6 then 'Scissors'
      when 0.6...0.8 then 'Spock'
      when 0.8...1 then 'Lizard'
    end
  end

end
