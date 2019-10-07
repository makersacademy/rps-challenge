class Game
  attr_reader :player, :player_one, :player_two, :turns

  def initialize(player_one, player_two = "The Computer")
    @player_one = player_one
    @player_two = player_two
    @player = player_one
    @turns = 0
    @rules = {
      "Rock" => "Scissors",
      "Paper" => "Rock",
      "Scissors" => "Paper"
    }
  end

  def self.create(player_one, player_two)
    @game = Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  def increase_turn
    @turns += 1
  end

  def switch_turns(current_player)
    if current_player == @player_one
      @player = @player_two
    else
      @player = @player_one
    end
  end

  def set_winner
    @rules.each { |key, value|
      @winner = @player_one.name if player_one_wins(key, value)
      @winner = @player_two.name if player_two_wins(key, value)
      @winner = "Draw" if draw(key, value)
    }
    @winner
  end

  private
  def player_one_wins(key, value)
    @player_one.choice == key && @player_two.choice == value
  end

  def player_two_wins(key, value)
    @player_two.choice == key && @player_one.choice == value
  end

  def draw(key, value)
    @player_one.choice == @player_two.choice
  end

end
