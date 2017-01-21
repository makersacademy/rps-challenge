#understands how to compare throws

module Compare
  WINS_AGAINST = {rock:     [:scissors],
                  paper:    [:rock],
                  scissors: [:paper]}.freeze
  def self.throws throw_1, throw_2
    return :draw if throw_1 == throw_2
    return :win if WINS_AGAINST[throw_1].include? throw_2
    :loss
  end
end
