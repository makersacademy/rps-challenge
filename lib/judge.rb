class Judge
  def decision(pick1, pick2)
    array = []
    array.push(pick1, pick2)

    if array[0].to_s == 'rock' && array[1].to_s == 'scissors'
      array[0].to_s
    elsif array[0].to_s == 'scissors' && array[1].to_s == 'rock'
      array[1].to_s
    elsif array[0].to_s == 'scissors' && array[1].to_s == 'paper'
      array[0].to_s
    elsif array[0].to_s == 'paper' && array[1].to_s == 'scissors'
      array[1].to_s
    elsif array[0].to_s == 'paper' && array[1].to_s == 'rock'
      array[0].to_s
    elsif array[0].to_s == 'rock' && array[1].to_s == 'paper'
      array[1].to_s
    else
      return 'Try again'
    end
  end
end
