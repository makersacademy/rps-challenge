class Game

  def self.create(player_one, player_two)
    @game ||= Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  attr_reader :player_one, :player_two, :winner

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @round_winner = nil
    @winner = nil
  end

  def update_score
    @round_winner.score += 1 if round_winner != nil
    check_winner
  end

  def check_winner
    @winner = @player_one if @player_one.score > 2
    @winner = @player_two if @player_two.score > 2
  end

  def round_winner
    if RULES[@player_one.weapon] == @player_two.weapon
      @round_winner = @player_one
    elsif RULES[@player_two.weapon] == @player_one.weapon
      @round_winner = @player_two
    else
      @round_winner = nil
    end
  end

  def reset
    @player_one.score = 0
    @player_two.score = 0
    @player_one.weapon = nil
    @player_two.weapon = nil
    @round_winner = nil
    @winner = nil
  end

private

RULES = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }
end
