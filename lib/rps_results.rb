class Rps_Results

  def winner(player, computer)
    possiblities =
    { ["Scissors", "Paper"] => "win",
      ["Paper", "Rock"] => "win",
      ["Rock", "Scissors"] => "win",
      ["Rock", "Paper"] => "loose",
      ["Scissors", "Rock"] => "loose",
      ["Rock", "Paper"] => "loose" }
    possiblities.each do |k, v|
      if k[0] == player && k[1] == computer
        return "You #{v}!"
      elsif player == computer
        return "Its a draw"
      end
    end
  end
end 
