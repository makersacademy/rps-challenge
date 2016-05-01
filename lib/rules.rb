class Rules

  def initialize(results = nil)
    @results = results
  end

  def calculate_result(move_1, move_2)
    results[move_1.to_sym][move_2.to_sym]
  end

  private

  def results
    @results || {
                rock: {scissors: 'win', paper: 'lose', rock: 'draw'},
                paper: {rock: 'win', scissors: 'lose', paper: 'draw'},
                scissors: {paper: 'win', rock: 'lose', scissors: 'draw'}
                }
  end

end