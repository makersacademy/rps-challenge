class Game
  attr_reader :player_one, :player_two
  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
  end

  def generate_message
    win, lose = calculate_winner
    return "It's a tie!" if win == 'tie'
    "<span class='win'>#{win.username}</span> " \
    "beat <span class='lose'>#{lose.username}</span> " \
    "with <span class='win'>#{win.move}</span> vs " \
    "<span class='lose'>#{lose.move}</span>!"
  end

  def calculate_winner
    win = {
      :rock => :scissors,
      :paper => :rock,
      :scissors => :paper
    }
    return 'tie' if @player_one.move == @player_two.move
    # Player one wins
    return @player_one, @player_two if win[@player_one.move] == @player_two.move
    # Player two wins
    return @player_two, @player_one if win[@player_two.move] == @player_one.move
  end
end
