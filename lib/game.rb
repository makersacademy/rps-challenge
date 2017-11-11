class Game

  attr_reader :player_1, :player_2, :weapons

  def initialize(player_1, player_2 = Computer.new)
    @player_1 = player_1
    @player_2 = player_2
    @weapons = {  rock: :scissors,
                  paper: :rock,
                  scissors: :paper}
  end

  def player_1_choice
    @player_1.weapon
  end

  def player_2_choice
    @player_2.weapon
  end

  def result
    if player_1_choice == player_2_choice
      "draw!"
    elsif @weapons[player_1_choice] == player_2_choice
      "#{@player_1.name} wins!"
    else
      "#{@player_2.name} wins!"
    end
  end

  def self.create(player_1, player_2 = Computer.new)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end
end
