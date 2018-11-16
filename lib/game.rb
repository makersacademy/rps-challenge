class Game
  def self.see_player_name
    @player_name
  end

  def self.start(name)
    @player_name = name
    @moves = ['Rock', 'Paper', 'Scissors']
    @result = {}
  end

  def self.see_result
    @result
  end

  def self.play_a_round(player_move)
    @result[:player_move] = player_move
    @result[:robot_move] = robot_move
    @result[:outcome] = player_move > robot_move
  end

  def self.robot_move
    @moves.sample
  end
end
