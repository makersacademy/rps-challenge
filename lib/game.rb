class Game

  RULES = { :rock => { :scissors => "win", :paper => "lose", :rock => "draw"},
            :paper => { :rock => "win", :scissors => "lose", :paper => "draw"},
            :scissors => { :paper => "win", :rock => "lose", :scissors => "draw"},
          }

  def initialize(player_choice, opponent_choice)
    @player_choice = player_choice
    @opponent_choice = opponent_choice
  end

  def display_player_choice
    @player_choice.to_s.capitalize
  end

  def display_opponent_choice
    @opponent_choice.to_s.capitalize
  end

  def outcome
    p winner? ? "You #{RULES[player_choice][opponent_choice]}!" : "You draw!"
  end

  private

  attr_reader :player_choice, :opponent_choice

  def winner?
    RULES[player_choice][opponent_choice] == "win" || "lose"
  end

end
