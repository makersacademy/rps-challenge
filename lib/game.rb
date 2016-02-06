class Game
  attr_reader :player_one, :player_two, :winner

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @winner = nil
    @draw = false
    @loser = nil
  end

  def fight
    difference = choice_value_diff % 5
    if difference == 0
      @draw = true
    elsif difference.odd?
      declare_winner(player_two)
      declare_loser(player_one)
    else
      declare_winner(player_one)
      declare_loser(player_two)
    end
  end

  def draw?
    @draw
  end

  def result
    draw? ? drawing_string : winning_string
  end



  private

  def choice_value_diff
    player_choice_value(@player_two) - player_choice_value(@player_one)
  end

  def player_choice_value(player)
    player.choice.values.pop
  end

  def player_choice(player)
    player.choice.keys.pop
  end

  def declare_winner(player)
    @winner = player
  end

  def declare_loser(player)
    @loser = player
  end

  def winning_string
    "#{player_choice(@winner)} beats #{player_choice(@loser)}!, #{@winner.name} has won!"
  end

  def drawing_string
    "It's a draw, you both chose #{player_choice(@player_one)}"
  end


end
