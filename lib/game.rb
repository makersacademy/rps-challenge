
class Game

  @game = nil

  def self.start_game(player_name)
    @game = Game.new(player_name)
  end

  def self.game
    @game
  end

  attr_reader :player_name, :choice, :comp_choice, :computer, :winner, :weapons, :draw

  def initialize(player_name)
    @player_name = player_name
    @computer = "Computer"
    @winner = nil
    @weapons = ["Rock", "Paper", "Scissors"]
    @draw = false
  end

  def name
    @player_name
  end

  def computer_weapon
    @comp_choice
  end

  def player_weapon
    @choice
  end

  def player_choice(choice)
    @choice = choice
  end

  def computer_choice
    comp_weapon
  end

  def rps(choice, comp_choice)
    if choice == comp_choice
      draw_game if choice == comp_choice
    elsif choice == "Paper"
      player_wins if comp_choice == "Rock"
      comp_wins if comp_choice == "Scissors"
    elsif choice == "Scissors"
      player_wins if comp_choice == "Paper"
      comp_wins if comp_choice == "Rock"
    elsif choice == "Rock"
      player_wins if comp_choice == "Scissors"
      comp_wins if comp_choice == "Paper"
    end
  end

  private

  def comp_weapon
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

  def draw_game
    @draw = true
  end

end
