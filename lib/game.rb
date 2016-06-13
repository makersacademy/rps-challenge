class Game

  attr_reader :name, :computer_choice, :winner
  attr_accessor :player_choice

  def initialize(player_name)
    @name = player_name
    @player_choice = nil
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def computer_chooses
    @computer_choice = random_select
  end

  def evaluate

    case

      when @player_choice == "Rock" && @computer_choice == "Scissors"
         @winner = @name
      when @player_choice == "Rock" && @computer_choice == "Paper"
         @winner = "Computer"
      when @player_choice == "Scissors" && @computer_choice == "Rock"
         @winner = "Computer"
      when @player_choice == "Scissors" && @computer_choice == "Paper"
        @winner = @name
      when @player_choice == "Paper" && @computer_choice == "Rock"
        @winner = @name
      when @player_choice == "Paper" && @computer_choice == "Scissors"
        @winner = "Computer"
      else
        @winner = "Nobody"
      end
  end

  private

  def random_select
     ["Rock", "Paper", "Scissors"].sample
  end

end


