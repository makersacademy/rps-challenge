class Game
  attr_reader :player_one, :player_two, :player_one_choice, :player_two_choice

  def initialize(player_one, player_two = "The Computer")
    @player_one = player_one
    @player_two = player_two
    @player = player_one
    @winner = nil
    @rules = {
      "Rock" => "Scissors",
      "Paper" => "Rock",
      "Scissors" => "Paper"
    }
  end

  def switch_turns(current_player)
    @player == @player_one ? @player = @player_two : @player = @player_one
  end

  def winner
    @rules.each { |key, value|
      if @player_one.choice == key && @player_two.choice == value
        @winner = @player_one.name
      elsif @player_two.choice == key && @player_one.choice == value
        @winner = @player_two.name
      elsif @player_one.choice == @player_two.choice
        @winner = "Draw"
      end
    }
    @winner
  end

  def self.create(player_one, player_two)
    @game = Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end
end
