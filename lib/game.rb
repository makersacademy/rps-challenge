class Game

  GAME_RULES = {
    rock: { :rock => :draw, :paper => :lose, :scissors => :win  },
    paper: { :rock => :win, :paper => :draw, :scissors => :lose },
    scissors: { :rock => :lose, :paper => :win, :scissors => :draw }
  }

  attr_reader :player_name, :player_weapon, :computer_weapon

  def initialize(game_information_hash)
    @player_name = game_information_hash[:player_name]
    @player_weapon = game_information_hash[:player_weapon]
    @computer_weapon = game_information_hash[:computer_weapon]
  end

  def player_wins?
    outcome == :win
  end

  def computer_wins?
    outcome == :lose
  end

  def draw?
    outcome == :draw
  end

  private

  def outcome
    return if @computer_weapon.nil?
    GAME_RULES[@player_weapon][@computer_weapon]
  end

end