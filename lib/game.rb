class Game

  attr_reader :player1, :player2, :player1_weapon, :player2_weapon

  def initialize(player1, player2)
    @player1 = player1
    @player2 = player2
    @player1_weapon = nil
    @player2_weapon = nil
  end

  RULES = {
    rock: :scissors,
    paper: :rock,
    scissors: :paper
  }

  WEAPONS = [:rock, :paper, :scissors]

  def self.create(player1, player2)
    @game = Game.new(player1, player2)
  end

  def self.instance
    @game
  end

  def play_game(weapon)
    player1_choose_weapon(weapon)
    player2_choose_weapon
  end

  def result
    if draw?
      :draw
    elsif player_wins?
      :winner
    else
      :loser
    end
  end

  private

  def player1_choose_weapon(weapon)
    @player1_weapon = weapon.to_sym
  end

  def player2_choose_weapon
    @player2_weapon = Game::WEAPONS.sample
  end

  def draw?
    self.player1_weapon == self.player2_weapon
  end

  def player_wins?
    Game::RULES[self.player1_weapon] == self.player2_weapon
  end

end
