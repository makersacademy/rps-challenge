class Game
  attr_reader :player_one, :player_two, :player_one_choice, :player_two_choice

  def initialize(player_one, player_two = "The Computer")
    @player_one = player_one
    @player_two = player_two
    @player_one_choice = ""
    @player_two_choice = ""
    @winner = nil
    @rules = {
      "Rock" => "Scissors",
      "Paper" => "Rock",
      "Scissors" => "Paper"
    }
  end

  def player_one_move(choice)
    @player_one_choice = choice
  end

  def player_two_move(choice)
    @player_two_choice = choice
  end

  def winner
    @rules.each { |key, value|
      if @player_one_choice == key && @player_two_choice == value
        @winner = @player_one
      elsif @player_two_choice == key && @player_one_choice == value
        @winner = @player_two
      elsif @player_one_choice == @player_two_choice
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
