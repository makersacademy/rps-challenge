class Game
  attr_reader :players, :turn, :round

  def initialize(player_1, player_2, round = Round.new)
    @players = [player_1, player_2]
    @turn = players[0]
    @round = round
  end

  def player_1
    players.first
  end

  def player_2
    players.last
  end

  def new_round
    if round.outcome_decided?
      @round = Round.new
      players.each { |player| player.reset_action }
    end
  end

  def switch_turn
    if turn == player_1
      @turn = players[1]
    elsif turn == player_2
      @turn = players[0]
    end
  end

  def act_for_computer
    if turn.computer?
      turn.random_throw
    end
  end

  def calculate_outcome
    if players.all? { |player| player.thrown_action? }
      rps_logic
    end
  end

  private

  def rps_logic
    win_condition = { scissors: :paper, paper: :rock, rock: :scissors }

    if player_1.action == player_2.action
      round.set_outcome("draws with")
    elsif win_condition[player_1.action] == player_2.action
      round.set_winner(player_1)
      round.set_looser(player_2)
      round.winner.increase_score
      calculate_outcome_message
    else
      round.set_winner(player_2)
      round.set_looser(player_1)
      round.winner.increase_score
      calculate_outcome_message
    end
  end

  def calculate_outcome_message
    case round.winner.action
    when :rock
      round.set_outcome('smashes')
    when :paper
      round.set_outcome('wraps')
    when :scissors
      round.set_outcome('cuts')
    end
  end
end
