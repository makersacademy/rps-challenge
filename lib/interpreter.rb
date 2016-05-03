#converts a result into a message

class Interpreter

  def print(result)
  	return "Dull but fair. It's a draw." if result == :draw
  	"Huge congratulations to #{result.name} - the WINNER."
  end

end