class Game
  WEAPONS = [:rock, :paper, :scissors]
  HANDLER = {
    :rock     => { :rock => :tie,   :paper => :lose,  :scissors => :win },
    :paper    => { :rock => :win,   :paper => :tie,   :scissors => :lose },
    :scissors => { :rock => :lose,  :paper => :win,   :scissors => :tie },
  }
  attr_reader :player_1, :player_2

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

  def player_choice(weapon)
    fail 'not an available weapon' unless Game::WEAPONS.include? weapon.to_sym
    @weapon = weapon.to_sym
  end

  def result(player_1_choice, player_2_choice)
    player_1_choice = player_1_choice.to_sym
    player_2_choice = player_2_choice.to_sym
    compare(HANDLER[player_1_choice][player_2_choice])
  end

  def compare(outcome)
    if outcome == :win
      return :win
    elsif outcome == :lose
      return :lose
    else
      return :tie
    end
  end

end
