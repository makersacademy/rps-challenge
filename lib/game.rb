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
    Winner::OUTCOMES.keys.sample
  end

end
