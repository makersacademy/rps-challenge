class Game

  attr_reader :p1, :p2

  def initialize(p1_pick, p2_pick)
    @p1 = p1_pick
    @p2 = p2_pick
  end

  def result
    return 'draw' if @p1 == @p2

    p1_win
  end

  private

  def p1_win
    if rock_win
      'rock'
    elsif scissors_win
      'scissors'
    elsif paper_win
      'paper'
    elsif spock_win
      'spock'
    elsif lizard_win
      'lizard'
    else
      'lose'
    end
  end

  def rock_win
    return true if @p1 == 'rock' && @p2 == 'scissors'
    return true if @p1 == 'rock' && @p2 == 'lizard'
  end

  def scissors_win
    return true if @p1 == 'scissors' && @p2 == 'paper'
    return true if @p1 == 'scissors' && @p2 == 'lizard'
  end

  def paper_win
    return true if @p1 == 'paper' && @p2 == 'rock'
    return true if @p1 == 'paper' && @p2 == 'spock'
  end

  def spock_win
    return true if @p1 == 'spock' && @p2 == 'scissors'
    return true if @p1 == 'spock' && @p2 == 'rock'
  end

  def lizard_win
    return true if @p1 == 'lizard' && @p2 == 'spock'
    return true if @p1 == 'lizard' && @p2 == 'paper'
  end
end
