require_relative 'player'

class Game

  attr_reader :player, :player_choice, :computer_choice, :result

  WEAPONS = [:rock, :paper, :scissors]
  RULES = { rock: :scissors,
      paper: :rock,
      scissors: :paper }

  def initialize(player)
    @player = player
    @player_choice
    @computer_choice
    @result
  end

  def self.start(player)
    @game = Game.new(player)
  end

  def play(choice)
    @computer_choice = WEAPONS.sample
    @player_choice = choice.downcase.to_sym
    if player_drew(@computer_choice, @player_choice)
      @result = :draw
    else 
      @result = who_won(@computer_choice, @player_choice)
    end
  end

  def player_drew(comp, player_choice)
    comp == player_choice
  end

  def who_won(comp, player_choice)
    RULES[player_choice].to_s == comp.to_s ? :win : :lose
  end

  def self.instance
    @game
  end

end