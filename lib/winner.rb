
class Winner


  # def initialize(marketeer, opponent)
  #   @marketeer = marketeer
  #   @opponent = opponent
  # end

  def result(marketeer, opponent)
    if marketeer == 'Rock' && opponent == 'Scissors' || marketeer == 'Scissors' && opponent == 'Paper' || marketeer == 'Paper' && opponent == 'Rock'
      return "Congratulations you win!!"
    elsif marketeer == opponent
      return "Game was a draw"
    else
      return "Unlucky you lose!!"
    end
  end

end
