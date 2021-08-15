
class Play
  attr_reader :player

  def initialize(player = 'Gandalf', computer = Computer.move)
    @player = player
    @computer = computer
  end 

  def result?(player_move)
    if player_move == @computer
      puts "It's a draw"
    elsif SCORE[player_move] == @computer
      puts "You win!"
    else puts "You loose"
    end
  end

  private
  SCORE = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

end

# rps = Silly.new
# p rps.game_result('rock')
