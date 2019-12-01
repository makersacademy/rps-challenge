require_relative 'player'

class Game
  attr_reader :player, :move

  def initialize(player)
    @player = player
    @outcome = ''
  end

  def generate_move
    @move = ['Rock', 'Paper', 'Scissors'].sample
  end

  def outcome(player_choice)
    if player_choice == 'Scissors' && @move == 'Scissors'
      'We drew!'
    elsif player_choice == 'Scissors' && @move == 'Rock'
      'You lose!'
    elsif player_choice == 'Scissors' && @move == 'Paper'
      'You won!'
    elsif player_choice == 'Rock' && @move == 'Rock'
      'We drew!'
    elsif player_choice == 'Rock' && @move == 'Paper'
      'You lose!'
    elsif player_choice == 'Rock' && @move == 'Scissors'
      'You won!'
    elsif player_choice == 'Paper' && @move == 'Rock'
      'You won!'
    elsif player_choice == 'Paper' && @move == 'Paper'
      'We drew!'
    elsif player_choice == 'Paper' && @move == 'Scissors'
      'You lose!'
    end
  end
end
