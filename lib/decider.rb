class Decider

  def initialize(move_1, move_2)
    @move_1 = move_1
    @move_2 = move_2
  end

  def result
    case @move_1
    when 'Rock'
      case @move_2
      when 'Rock'
        return "drew"
      when 'Paper'
        return "lose"
      when 'Scissors'
        return "win"
      end
    when 'Paper'
      case @move_2
      when 'Rock'
        return "win"
      when 'Paper'
        return "drew"
      when 'Scissors'
        return "lose"
      end
    when 'Scissors'
      case @move_2
      when 'Rock'
        return "lose"
      when 'Paper'
        return "win"
      when 'Scissors'
        return "drew"
      end
    end

  end
end
