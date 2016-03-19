class Game

  attr_reader :players, :winner, :player_choice, :computers_choice

  def self.create(player_klass: , player_name:)
    @instance = self.new(player_klass: player_klass, player_name: player_name)
  end

  def self.current_game
    @instance
  end

  def initialize(player_klass: , player_name: )
    @player_class = player_klass
    player = @player_class.new(player_name)
    @players = []
    @players << player
  end

  def self.reset
    @instance = nil
  end

  def play(choice)
    @winner = nil
    @player_choice = choice
    @computers_choice = computer_choice
    return @winner = "Tie" if tie?
    outcome = outcomes[@player_choice.to_sym][@computers_choice.to_sym]
    if outcome == 1
      @winner = "Computer"
    elsif outcome == 0
     @winner =  @players.first.name
    end
  end

  private

  def computer_choice
  array = ["Rock","Paper","Scissors"]
  computer_choice = array[Kernel.rand(0..2)]
  end

  def outcomes
    {
    Rock: { Scissors:0, Paper:1 },
    Paper: { Rock: 0, Scissors:1},
    Scissors: { Paper: 0, Rock:1},
  }
  end

  def tie?
    @player_choice == @computers_choice
  end
end
