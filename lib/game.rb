class Game

  RULES = { :rock => { :scissors => "win", :paper => "lose", :rock => "draw"},
            :paper => { :rock => "win", :scissors => "lose", :paper => "draw"},
            :scissors => { :paper => "win", :rock => "lose", :scissors => "draw"},
          }

  def initialize(name, player_choice, opponent_choice)
    @name = name
    @player_choice = player_choice
    @opponent_choice = opponent_choice
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
