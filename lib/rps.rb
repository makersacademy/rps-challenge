class RPS
  attr_reader :choices

  def initialize(choice, opponent_choice)
    @choices = [choice, opponent_choice]
  end

  WIN_CONDITIONS = [
    ["rock", "scissors"],
    ["scissors", "paper"],
    ["paper", "rock"]
  ]

  def outcome
    if draw?
      "draw"
    elsif win?
      "win"
    else
      "lose"
    end
  end

  private

  def win?
    WIN_CONDITIONS.include? choices
  end

  def draw?
    choices.first == choices.last
  end
end