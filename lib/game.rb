class Game
  attr_reader :player_name, :player_one_choice, :player_two_choice

  def initialize(player)
    @player_name = player
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
        @winner = @player_name
      elsif @player_two_choice == key && @player_one_choice == value
        @winner = "The Computer"
      elsif @player_one_choice == @player_two_choice
        @winner = "Draw"
      end
    }
    @winner
  end

  def self.create(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

end
