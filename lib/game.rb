
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
    computer_weapon
  end

  def rps(choice, comp_choice)
    if choice == "Rock"
      player_wins if comp_choice == "Scissors"
      comp_wins if comp_choice == "Paper"
    elsif choice == "Paper"
      player_wins if comp_choice == "Rock"
      comp_wins if comp_choice == "Scissors"
    elsif choice == "Scissors"
      player_wins if comp_choice == "Paper"
      comp_wins if comp_choice == "Rock"
    end
  end

  private

  def computer_weapon
    @comp_choice = weapons[rand_num]
  end

  def rand_num
    Kernel.rand(3)
  end

  def player_wins
    @winner = @player_name
  end

  def comp_wins
    @winner = @computer
  end

end
