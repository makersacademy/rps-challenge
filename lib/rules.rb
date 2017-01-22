#understands how to compare throws

module Rules
  WIN_MATRIX = {rock:     [:scissors,:lizard],
                paper:    [:rock    ,:spock],
                scissors: [:paper   ,:lizard],
                lizard:   [:spock   ,:paper],
                spock:    [:rock    ,:scissors]}.freeze

  def self.compare throw_1, throw_2
    return :draw if throw_1 == throw_2
    return :win if WIN_MATRIX[throw_1].include? throw_2
    :loss
  end
end
