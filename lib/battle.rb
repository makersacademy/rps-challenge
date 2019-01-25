class Battle
  def initialize(player1,player2)
    @player1 = player1
    @player2 = player2
  end

  def winner
    return result[:draw] ? :draw : result[:win]
  end

  def loser
    return result[:draw] ? :draw : result[:lose]
  end

  private

  def result
    lookup = {
      rock: {rock: :draw, paper: :lose, scissors: :win},
      paper: {rock: :win, paper: :draw, scissors: :lose},
      scissors: {rock: :lose, paper: :win, scissors: :draw}
    }
    case lookup[@player1.move][@player2.move]
      when :draw then return {win: nil, lose: nil, draw: true}
      when :win then return {win: @player1, lose: @player2, draw: false}
      when :lose then return {win: @player2, lose: @player1, draw: false}
    end
  end
end
