class Judge
  def compare(p: player, c: computer)
    if p == c
      :neither
    else
      case p
      when 'ROCK'
        c == 'PAPER' ? :comp : :pers
      when 'PAPER'
        c == 'SCISSORS' ? :comp : :pers
      when 'SCISSORS'
        c == 'ROCK' ? :comp : :pers
      end
    end
  end
end
