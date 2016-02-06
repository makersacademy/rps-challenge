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
    difference = choice_value_diff
    if difference == 0
      @draw = true
    elsif difference.odd?
      declare_winner(player_one)
      declare_loser(player_two)
    else
      declare_winner(player_two)
      declare_loser(player_one)
    end
  end

  def draw?
    @draw
  end

  def result
    draw? ? "It's a draw!" : winning_string
  end



  private

  def choice_value_diff
    player_choice_value(@player_one) - player_choice_value(@player_two)
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


end
