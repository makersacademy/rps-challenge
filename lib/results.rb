# understands what moves win / lose when played against eachoher

class Results

  attr_reader :scenarios

  def initialize
    @scenarios = {
      rock_scissors: :rock,
      rock_paper: :paper,
      rock_rock: :draw,
      scissors_paper: :scissors,
      scissors_scissors: :draw,
      scissors_rock: :rock,
      paper_paper: :draw,
      paper_rock: :paper,
      paper_scissors: :scissors,
    }
  end

  def get_result(first_move, second_move)
    key = first_move.to_s + "_" + second_move.to_s
    scenarios[key.to_sym]
  end


end
