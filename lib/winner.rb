
class Winner

  def result(marketeer, opponent)
    # if marketeer == 'Rock' && opponent == 'Scissors' || marketeer == 'Scissors' && opponent == 'Paper' || marketeer == 'Paper' && opponent == 'Rock'
    #   return "Congratulations you win!!"
    # elsif marketeer == opponent
    #   return "Game was a draw"
    # else
    #   return "Unlucky you lose!!"
    # end
    case [marketeer, opponent]
      when ['Rock', 'Scissors'],['Paper', 'Rock'],['Scissors', 'Paper']
        return  "Congratulations you win!!"
      when ['Rock', 'Paper'], ['Paper', 'Scissors'], ['Scissors', 'Rock']
        return "Unlucky you lose!!"
      else
        return "Game was a draw"
      end
  end

end
