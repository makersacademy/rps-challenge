require_relative 'player'
require_relative 'computer'

class Game

  RULES = { Rock: :Scissors,
            Paper: :Rock,
            Scissors: :Paper }

  attr_reader :player_1, :comp_choice

  def initialize(player_1)
    @player1 = player_1
  end

  def self.create(player_1)
    @game = Game.new(player_1)
  end

  def self.instance
    @game
  end

  def player_1_weapon
    @player1.weapon.to_sym
  end

  def play(comp_choice = Computer.random_select)
    @comp_choice = comp_choice
    game_outcome
  end

  def comp_choice
    @comp_choice
  end

  def game_outcome
    if draw?
      "It's a tie"
    elsif wins?
      "You win!!"
    else
      "You lose!!"
    end
  end

  private

    def wins?
      RULES[player_1_weapon] == comp_choice
    end

    def draw?
      player_1_weapon == comp_choice
    end

end
