class Game

  attr_reader :player_1, :player_2, :w1, :w2

  RULES = {Rock:"Scissors", Scissors:"Paper", Paper:"Rock"}

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def return_weapons
    @w1 = @player_1.weapon
    @player_2.generate_weapon
    @w2 = @player_2.weapon
  end

  def draw?
    w1.to_s == w2
  end

  def win?
    beats?(w1,w2)
  end

  def lose?
    !beats?(w1,w2) && !draw?
  end

  private

  def beats?(weapon_1, weapon_2)
    RULES[weapon_1] == weapon_2
  end

end
