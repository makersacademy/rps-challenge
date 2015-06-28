class Player

  attr_reader :choice

  def invalid_choice
    if
      @choice.downcase == 'rock' || 'paper' || 'scissors'
      return false
    else
      true
    end
  end
end