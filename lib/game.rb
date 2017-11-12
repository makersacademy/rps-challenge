require_relative 'player'

class Game
  RULES = [[:rock, :scissors], [:paper, :rock], [:scissors, :paper]]
  WEAPONS = [:rock, :paper, :scissors]
  attr_reader :player, :player_choice, :computer

  def initialize(player)
    @player = player
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def player
    @player
  end

  def player_choice(weapon)
    @player_choice = weapon
  end

  def computer
    @computer = WEAPONS.sample
  end

  def result
    if @player_choice.to_sym == @computer
      return :even
    else
      i = 0
      RULES.each do |k|
        if k == [@player_choice.to_sym, @computer]
          i += 1
        end
      end
      if i > 0
        return :win
      else
        return :lose
      end
    end
  end

end
