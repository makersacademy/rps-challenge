class Judge
  attr_reader :rulebook

  def initialize(rulebook = Rulebook.new)
    @rulebook = rulebook
  end

  def call(player_weapon, computer_weapon)
    @p_weapon = player_weapon
    @c_weapon = computer_weapon
    return 'Tie' if tie?
    computer_wins ? 'Zoe 5.1 wins' : 'Player wins'
  end

  private

  def computer_wins
    @rulebook.rules.each do |enemies|
      return true if enemies.pair[@p_weapon] == @c_weapon
    end
    false
  end

  def tie?
    @p_weapon == @c_weapon
  end
end
