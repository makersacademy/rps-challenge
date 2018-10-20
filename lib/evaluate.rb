require 'pry'

class Evaluate

  def evaluate(array)
    result = player_1_rock(array) if array[0] == "Rock"
    result = player_1_paper(array) if array[0] == "Paper"
    result = player_1_scissors(array) if array[0] == "Scissors"      
    return result
  end

  private

  def player_1_rock(array)
    return('draw') if array[1] == "Rock"
    return('player_2_win') if array[1] == "Paper"
    return 'player_1_win' if array[1] ==  "Scissors"
  end

  def player_1_paper(array)
    return('player_1_win') if array[1] == "Rock"
    return('draw') if array[1] == "Paper"
    return('player_2_win') if array[1] ==  "Scissors"
  end

  def player_1_scissors(array)
    return('player_2_win') if array[1] == "Rock"
    return('player_1_win') if array[1] == "Paper"
    return('draw') if array[1] ==  "Scissors"
  end

end
