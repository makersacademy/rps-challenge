class Printer
  def self.winner(winner)
    if winner == :tie
      "Game is tied!"
    else
      "#{winner} won!"
    end
  end
end
