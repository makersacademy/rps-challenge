class Game

  def initialize
    @player_weapon = nil
  end

  attr_reader :player_weapon

  def player_choose_weapon(weapon)
    @player_weapon = weapon
  end

  def cp_choose_weapon
    @cp_weapon = ['Rock', 'Paper', 'Scissors'].sample
  end

  def announce_winner
    if @player_weapon == @cp_weapon
      'You drew!'
    else
      win_or_lose
    end
  end

  def win_or_lose
    case @player_weapon
    when 'Rock'
      @cp_weapon == 'Scissors' ? 'You win!' : 'You lose!'
    when 'Paper'
      @cp_weapon == 'Rock' ? 'You win!' : 'You lose!'
    when 'Scissors'
      @cp_weapon == 'Paper' ? 'You win!' : 'You lose!'
    end
  end
end
