#converts a result into a message

class Interpreter

  def print(result)
  	return 'Huge congratulations. You WIN.' if result == :player
    return 'Commiserations. You LOSE' if result == :machine
    return "Dull but fair. It's a draw." if result == :draw
  end

end