class Game
attr_reader :player_one_selection, :player_two_selection,
:name, :name_two, :description, :computer_selection, :winner

  def initialize(name, name_two="NA")
    @name = name
    @name_two = name_two
  end

  def self.create(name, name_two="NA")
    @game = Game.new(name, name_two)
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
    if (@computer_selection == "Paper" && @player_one_selection == "Rock")
      @winner = "Computer"
    elsif (@computer_selection == "Scissors" && @player_one_selection == "Paper")
      @winner = "Computer"
    elsif (@computer_selection == "Rock" && @player_one_selection == "Scissors")
      @winner = "Computer"
    else
      @winner = @name
    end
  end

  def human_select(option)
   @player_one_selection = option
   fancy_description
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

  # def redirect(object)
  #   if (player_one_selection == nil) && (name_two == "NA")
  #     human_select(object)
  #     @redirect = '/result'
  #   elsif player_one_selection == nil
  #     human_select(object)
  #     @name_two = name_two
  #     @redirect = '/player-two'
  #   else
  #     player_one_select(object)
  #     @redirect = '/end-game'
  #   end
  # end
end
