require_relative 'player'

class ClassicGame

  attr_reader :player, :p_turn, :ai_turn

  def initialize(player = Player.new('PLAYER ONE'), player_two = Player.new('COMPUTER'))
    @player = player
    @player_two = player_two
  end

  def move(input)
    fail "invalid move" unless valid_move(input)
    @p_turn = input
  end

  def ai_move
    case random_number
    when 1
      @ai_turn = "Rock"
    when 2
      @ai_turn = "Paper"
    when 3
      @ai_turn = "Scissors"
    end
  end

  def result
    raise "turns not completed" if @p_turn.nil? || @ai_turn.nil?
    score_counter
  end

  def reset
    @p_turn = nil
    @ai_turn = nil
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
    return 0 if @p_turn == @ai_turn
    if @p_turn == "Rock"
      @ai_turn == "Paper" ? @player_two : @player
    elsif @p_turn == "Scissors"
      @ai_turn == "Rock" ? @player_two : @player
    else
      @ai_turn == "Scissors" ? @player_two : @player
    end
  end

  def score_counter
    if win_condition == @player
      "You win!"
    elsif win_condition == @player_two
      "I win!"
    else
      "It's a draw!"
    end
  end
end
