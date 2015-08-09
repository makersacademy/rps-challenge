require_relative './player'

class Game
  attr_reader :p_1, :p_2, :played_matches, :beats

  def initialize(p_1, p_2)
    @beats = { rock: [:scissors, :lizard],
               paper: [:rock, :spock],
               scissors: [:paper, :lizard],
               spock: [:scissors, :rock],
               lizard: [:paper, :spock] }
    @p_1 = p_1
    @p_2 = p_2
    @played_matches = 0
  end

  def match move_1, move_2
    @played_matches += 1
    select_moves move_1, move_2
    wins_incrementer
    match_result
    match_winner
  end

  def select_moves move_1, move_2
    p_1.make_move move_1
    p_2.name == 'COMPUTER' ? p_2.make_move(random_move) : p_2.make_move(move_2)
  end

  def random_move
    @beats.keys.sample
  end

  def match_result
    if (p_1.move == p_2.move)
      0
    elsif beats[p_1.move].include?(p_2.move)
      1
    else
      2
    end
  end

  def match_winner
    return "#{p_1.name.capitalize} wins the match" if match_result == 1
    return "#{p_2.name.capitalize} wins the match" if match_result == 2
    "This match is a draw"
  end

  def wins_incrementer
    p_1.win if match_result == 1
    p_2.win if match_result == 2
  end

  def final_winner
    return "#{p_1.name.capitalize} wins the game!" if p_1.wins > p_2.wins
    return "#{p_2.name.capitalize} wins the game!" if p_2.wins > p_1.wins
    "It's a draw!"
  end

end

