class Game

  def self.create(player_one, player_two)
    @game ||= Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  attr_reader :player_one, :player_two

  def initialize(player_one, player_two)
    @player_one = player_one
    @player_two = player_two
    @round_winner = nil
  end

  def update_score
    @round_winner.score += 1 if round_winner != nil
  end

  def round_winner
    if @player_one.weapon == @player_two.weapon
      @round_winner = nil
    elsif @player_one.weapon == "Rock" && @player_two.weapon == "Paper"
      @round_winner = @player_two
    elsif @player_one.weapon == "Rock" && @player_two.weapon == "Scissors"
      @round_winner = @player_one
    elsif @player_one.weapon == "Paper" && @player_two.weapon == "Rock"
      @round_winner = @player_one
    elsif @player_one.weapon == "Paper" && @player_two.weapon == "Scissors"
      @round_winner = @player_two
    elsif @player_one.weapon == "Scissors" && @player_two.weapon == "Rock"
      @round_winner = @player_two
    else
      @round_winner = @player_one
    end
  end

end
