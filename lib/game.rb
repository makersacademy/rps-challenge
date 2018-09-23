class Game
  attr_reader :player_one, :player_two
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def generate_message
    winner, loser = calculate_winner
    return "It's a tie!" if winner == 'tie'
    "#{winner.username} beat #{loser.username} with #{winner.move} vs #{loser.move}!"
  end

  def calculate_winner
    case @player_one.move
    when 'rock'
      return @player_two, @player_one if @player_two.move == 'paper' # Rock loses to paper
      return @player_one, @player_two if @player_two.move === 'scissors' # Rock beats scissors
      return 'tie'
    when 'paper'
      return @player_two, @player_one if @player_two.move == 'scissors' # Paper loses to scissors
      return @player_one, @player_two if @player_two.move === 'rock' # Rock beats scissors
      return 'tie'
    when 'scissors'
      return @player_two, @player_one if @player_two.move == 'rock' # Scissors lose to rock
      return @player_one, @player_two if @player_two.move === 'paper' # Scissors beats paper
      return 'tie'
    end
  end
end