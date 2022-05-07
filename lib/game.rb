class Game
  attr_reader :player_1, :player_2, :outcome_message, :winner, :looser,:turn

  def initialize(player1, player2)
    @player_1, @player_2 = player1, player2
    @turn = player_1
  end

  def calculate_outcome

    if player_2.is_a_computer?
      player_2.random_throw
    end

    if outcome_message
      # reset_players
      # reset_outcome_message
    end

    if player_1.action && player_2.action
      rps_logic(player_1.action, player_2.action)
    end

    switch_turns
  end

  private

  def rps_logic(p1, p2)
    win_condition = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

    if p1 == p2
      @outcome_message = "draws with"
    elsif win_condition[p1] == p2
      @winner = player_1
      @looser = player_2
      calculate_outcome_message
    else
      @winner = player_2
      @looser = player_1
      calculate_outcome_message
    end
  end

  def calculate_outcome_message
    case winner.action
    when 'rock'
      @outcome_message = 'smashes'
    when 'paper'
      @outcome_message = 'wraps'
    when 'scissors'
      @outcome_message = 'cuts'
    end
  end

  def switch_turns
    if turn == player_1
      @turn = player_2
    elsif turn == player_2
      @turn = player_1
    end
  end
end