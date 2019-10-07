require_relative 'computer_player'

class Game

  MOVE_LOOKUP = {
    rock: :paper,
    paper: :scissors,
    scissors: :rock
  }

  def self.player
    @@player
  end

  def self.new(player)
    @@player = player
  end

  def self.play(move)
    self.calculate_moves
    case move
    when @win_move
      :win
    when @draw_move
      :draw
    when @lose_move
      :lose
    end
  end

  def self.calculate_moves
    computer_move = ComputerPlayer.move
    @win_move = MOVE_LOOKUP[computer_move]
    @draw_move = computer_move
    @lose_move = MOVE_LOOKUP.key(computer_move)
  end
end
