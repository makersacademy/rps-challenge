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
    check_winner
    if winner.nil?
      @round_winner.score += 1 if round_winner != nil
    end
  end

  def check_winner
    @winner = @player_one if @player_one.score > 9
    @winner = @player_two if @player_two.score > 9
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

private

RULES = { "Rock" => "Scissors", "Paper" => "Rock", "Scissors" => "Paper" }

#
# def round_winner
#   if @player_one.weapon == @player_two.weapon
#     @round_winner = nil
#   elsif @player_one.weapon == "Rock" && @player_two.weapon == "Paper"
#     @round_winner = @player_two
#   elsif @player_one.weapon == "Rock" && @player_two.weapon == "Scissors"
#     @round_winner = @player_one
#   elsif @player_one.weapon == "Paper" && @player_two.weapon == "Rock"
#     @round_winner = @player_one
#   elsif @player_one.weapon == "Paper" && @player_two.weapon == "Scissors"
#     @round_winner = @player_two
#   elsif @player_one.weapon == "Scissors" && @player_two.weapon == "Rock"
#     @round_winner = @player_two
#   else
#     @round_winner = @player_one
#   end
# end
end
