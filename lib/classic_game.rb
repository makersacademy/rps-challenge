require_relative 'player'

class ClassicGame

  attr_reader :player

  def initialize(player = Player.new('PLAYER ONE'), player_two = Player.new('COMPUTER'))
    @player = player
    @player_two = player_two
  end

  def move(input)
    fail "invalid move" unless valid_move(input)
    @p_move = input
  end

  def ai_move
    case random_number
    when 1
      @ai_move = "Rock"
    when 2
      @ai_move = "Paper"
    when 3
      @ai_move = "Scissors"
    end
  end

  def result
    raise "turns not completed" if @p_move.nil? || @ai_move.nil?
    win_condition
  end

  def reset
    @p_move = nil
    @ai_move = nil
  end

  private

  def valid_move(input)
    return true if input == "Rock" || input == "Paper" || input == "Scissors"
    false
  end

  def random_number
    rand(1..3).to_i
  end

  def win_condition
    return 0 if @p_move == @ai_move
    if @p_move == "Rock"
      @ai_move == "Paper" ? @player_two : @player
    elsif @p_move == "Scissors"
      @ai_move == "Rock" ? @player_two : @player
    else
      @ai_move == "Scissors" ? @player_two : @player
    end
  end
end
