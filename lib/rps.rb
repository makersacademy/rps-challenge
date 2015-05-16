class RPS
  def results(player_choice)
    cpu_choice = random

    if player_choice == cpu_choice
      result = :tie
    elsif player_choice == :paper && cpu_choice == :rock || player_choice == :scissors && cpu_choice == :paper || player_choice == :rock && cpu_choice == :scissors
      result = :win
    else
      result = :lose
    end

    { cpu_choice: cpu_choice, result: result }
  end

  # private

  def random
    options = [:rock, :paper, :scissors]
    options[rand(3)]
  end
end
