class Game
  attr_reader :player_one_selection, :player_two_selection,
  :name, :name_two, :description, :computer_selection, :winner,
  :computer_hash, :player_one_hash

  def initialize(name, name_two = "NA")
    @name = name
    @name_two = name_two
  end

  def self.create(name, name_two = "NA")
    @game = Game.new(name, name_two)
  end

  def self.instance
    @game
  end

  def computer_select
    pick = rand(3)
    if pick == 1
      @computer_hash = { "Rock" => 1 }
    elsif pick == 2
      @computer_hash = { "Paper" => 2 }
    else
      @computer_hash = { "Scissors" => 3 }
    end
    find_computer_object
  end

  def find_computer_object
    @computer_selection = @computer_hash.keys.join("")
  end

  def calculate_winner
    if @computer_hash.values.join().to_i
      - @player_one_hash.values.join().to_i == 2 || -1
      @winner = @name
    else
      @winner = @computer
    end
  end

  def human_select(option)
    if option == "Rock"
      @player_one_hash = { "Rock" => 1 }
    elsif option == "Paper"
      @player_one_hash = { "Paper" => 2 }
    else
      @player_one_hash = { "Scissors" => 3 }
    end
    find_player_one_object
    fancy_description
  end

  def find_player_one_object
    @player_one_selection = @player_one_hash.keys.join("")
  end

  def player_two_select(option)
    @player_two_selection = option
  end

  def calculate_winner_multiplayer
    if (@player_two_selection == "Paper" && @player_one_selection == "Rock")
      @winner = @name_two
    elsif (@player_two_selection == "Scissors" && @player_one_selection == "Paper")
      @winner = @name_two
    elsif (@player_two_selection == "Rock" && @player_one_selection == "Scissors")
      @winner = @name_two
    else
      @winner = @name
    end
  end

  def fancy_description
    if @player_one_selection == "Rock"
      @description = "The Almighty"
    elsif @player_one_selection == "Paper"
      @description = "The Dreaded"
    else
      @description = "The Crafty"
    end
  end

end
