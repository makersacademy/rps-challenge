require_relative 'player'

class Game

  attr_reader :player, :computer, :result

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
      paper: :rock,
      scissors: :paper }

  def initialize(player)
    @player = player
    @computer = Player.new("Computer")
    @result
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def play(player_choice)
    @player.choose(player_choice.downcase.to_sym)
    computer_random_weapon
    if player_drew(@computer, @player)
      @result = :draw
    else 
      @result = who_won(@computer, @player)
    end
  end

  def computer_random_weapon
    @computer.choose(WEAPONS.sample)
  end

  def player_drew(computer, player)
    computer.weapon == player.weapon
  end

  def who_won(computer, player)
    RULES[player.weapon].to_s == computer.weapon.to_s ? :win : :lose
  end

  def self.instance
    @game
  end

end