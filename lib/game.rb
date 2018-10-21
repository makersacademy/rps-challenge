class Game

  attr_reader :player, :computer

  def initialize(name)
    @player = Player.new(name)
    @computer = Computer.new
  end

  def self.create(player_name)
    @game = Game.new(player_name)
  end

  def self.instance
    @game
  end

  def player_name
    player.name
  end

  def player_chooses(choice)
    player.make_a_choice(choice)
  end

  def player_choice
    player.choice
  end

  def computer_choice
    computer.choice
  end

  def score_game
    if player_winning_choices.include?([player_choice, computer_choice])
      win
    elsif player_choice == computer_choice
      draw
    end
  end

  def win
    @win = true
  end

  def draw
    @draw = true
  end

  def result
    return "Win" if @win
    return "Draw" if @draw
    return "Lose"
  end

  def player_winning_choices
    [["Rock", "Scissors"], ["Paper", "Rock"], ["Scissors", "Paper"]]
  end

end
