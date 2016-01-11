class Turn

  WEAPONS = ['Paper', 'Rock', 'Scissors']

  attr_reader :message, :weapon1, :weapon2

  def initialize(weapon1, weapon2)
    @weapon1 = weapon1
    @weapon2 = weapon2 || rand_weapon
  end

  def winner
    if tie?
      @message = 'No winners!'
      nil
    elsif lose?
      @message = 'You lost!'
      :player2
    else
      @message = 'You won!'
      :player1
    end
  end

  private

  def tie?
    @weapon1 == @weapon2
  end

  def lose?
    @weapon1 == 'Rock' && @weapon2 == 'Paper' || @weapon1 == 'Scissors' && @weapon2 == 'Rock' || @weapon1 == 'Paper' && @weapon2 == 'Scissors'
  end

  def rand_weapon
    #WEAPONS.sample
    'Rock'
  end

end
