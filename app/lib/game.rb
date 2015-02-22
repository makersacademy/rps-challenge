class Game

  attr_reader :player1, :player2, :uuid

  def initialize(player1= :no_player, player2= :no_player)
    @player1 = player1
    @player2 = player2
    @uuid = make_uuid
  end

  def add_player(player)
    @player1 == :no_player ? (return @player1 = player) : @player1
    @player2 == :no_player ? (return @player2 = player) : @player2
    raise 'Already two people playing!'
  end

  def opponent_of(player_id)
    if @player1.browser_id == player_id
      return @player2
    else
      @player2.browser_id == player_id ? (return @player1) : (raise 'Player ID Mismatch!')
    end
  end

  def full?
    @player2 == :no_player ? false : true
  end

  def resolve_winner
    case @player1.weapon
      when :ROCK
        result = p1_has_rock
      when :PAPER
        result = p1_has_paper
      when :SCISSORS
        result = p1_has_scissors
    end
  end

  # # # # # # # # # # #

  private

  def make_uuid
    SecureRandom.hex
  end

  def p1_has_rock
    case @player2.weapon
      when :ROCK
        return :TIE
      when :PAPER
        return player2
      when :SCISSORS
        return player1
    end
  end

  def p1_has_paper
    case @player2.weapon
      when :ROCK
        return player1
      when :PAPER
        return :TIE
      when :SCISSORS
        return player2
    end
  end

  def p1_has_scissors
    case @player2.weapon
      when :ROCK
        return player2
      when :PAPER
        return player1
      when :SCISSORS
        return :TIE
    end
  end






end
