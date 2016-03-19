
class Game

  @game = nil

  def self.start_game(player_name)
    @game = Game.new(player_name)
  end

  def self.game
    @game
  end

  attr_reader :player_name, :choice, :comp_choice, :computer, :winner, :weapons

  def initialize(player_name)
    @player_name = player_name
    @computer = "Computer"
    @winner = nil
    @weapons = ["Rock", "Paper", "Scissors"]
  end

  def name
    @player_name
  end

  def player_choice(choice)
    @choice = choice
  end

  def computer_choice
    @comp_choice = weapons[rand_num]
  end

  def rps(choice, comp_choice)
    if choice == "Rock"
      @winner = @player_name if comp_choice == "Scissors"
      @winner = @computer if comp_choice == "Paper"
    elsif choice == "Paper"
      @winner = @player_name if comp_choice == "Rock"
      @winner = @computer if comp_choice == "Scissors"
    elsif choice == "Scissors"
      @winner = @player_name if comp_choice == "Paper"
      @winner = @computer if comp_choice == "Rock"
    end
  end

  private

  def rand_num
    Kernel.rand(3)
  end

end
