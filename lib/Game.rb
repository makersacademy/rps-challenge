require_relative 'player'

class Game

  attr_reader :object, :computer_object

  def random_selection
    [:Rock, :Paper, :Scissors].sample
  end

  def winner(object)
    # if object == :Rock && random_selection == :Rock
    if ({:Rock => :Scissors} || {:Paper => :Rock} || {:Scissors => :Paper})
      :winner
    if ({:Rock => :Rock} || {:Paper => :Paper} || {:Scissors => :Scissors})
      :draw
    elsif ({:Rock => :Paper} || {:Paper => :Scissors} || {:Scissors => :Rock})
      :loser
    end
    end
  end

end
