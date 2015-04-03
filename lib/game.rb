class Game
  def win?(move)
    other = other_move
    puts "win? is #{result = beats[move] == other} and other is #{other} and other inspected is #{other.inspect}"
    # beats[move] == other_move
    result
  end

  def beats
    puts 'hello'
    { rock: :scissors, scissors: :paper, paper: :rock }
  end

  def other_move
    beats.keys.sample
  end
end
