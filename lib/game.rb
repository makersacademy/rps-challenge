class Game
attr_reader :human_selection, :name, :description, :computer_selection, :winner

  def initialize(name)
    @name = name
  end

  def self.create(name)
    @game = Game.new(name)
  end

  def self.instance
    @game
  end

  def computer_select
    pick = rand(3)
    if pick == 1
      @computer_selection = "Rock"
    elsif pick == 2
      @computer_selection = "Paper"
    else
      @computer_selection = "Scissors"
    end
  end

  def calculate_winner
    if (@computer_selection == "Paper" && @human_selection == "Rock")
      @winner = "Computer"
    elsif (@computer_selection == "Scissors" && @human_selection == "Paper")
      @winner = "Computer"
    elsif (@computer_selection == "Rock" && @human_selection == "Scissors")
      @winner = "Computer"
    else
      @winner = @name
    end
  end

  def human_select(option)
   @human_selection = option
   fancy_description
  end

  def fancy_description
    if @human_selection == "Rock"
      @description = "The Almighty"
    elsif @human_selection == "Paper"
      @description = "The Dreaded"
    else
      @description = "The Crafty"
    end
  end
end
