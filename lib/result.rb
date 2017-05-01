class Result

  def initialize(input_1, input_2)
    @res_arr = [input_1, input_2]
  end

  def return_winner
    if @res_arr[0] == @res_arr[1]; 
        'Draw' 
      elsif (@res_arr[0] == 'rock' && @res_arr[1] == 'scissors')
        'Player 1 Wins'
      elsif (@res_arr[0] == 'paper' && @res_arr[1] == 'rock')
        'Player 1 Wins'
      elsif (@res_arr[0] == 'scissors' && @res_arr[1] == 'paper')
        'Player 1 Wins'
      elsif (@res_arr[1] == 'rock' && @res_arr[0] == 'scissors')
        'Player 2 Wins'
      elsif (@res_arr[1] == 'paper' && @res_arr[0] == 'rock')
        'Player 2 Wins'
      else (@res_arr[1] == 'scissors' && @res_arr[0] == 'paper')
        'Player 2 Wins'
    end
  end

end
