class Player
  attr_reader :name, :choice, :winner

  def initialize(name)
    @name = name
  end

  def self.create(player_1)
    @player = Player.new(player_1)
  end

  def self.instance
    @player
  end

  def weapon(choice)
    @choice = choice
    @comp_choice = ["Rock", "Paper", "Scissors"].sample
    @winner = "You" if @choice == "Rock" && @comp_choice == "Scissors"
    @winner = "You" if @choice == "Paper" && @comp_choice == "Rock"
    @winner = "You" if @choice == "Scissors" && @comp_choice == "Paper"
    @winner = "The Computer" if @choice == "Rock" && @comp_choice == "Paper"
    @winner = "The Computer" if @choice == "Paper" && @comp_choice == "Scissors"
    @winner = "The Computer" if @choice == "Scissors" && @comp_choice == "Rock"
    @winner = "Nobody" if @choice == "Rock" && @comp_choice == "Rock"
    @winner = "Nobody" if @choice == "Paper" && @comp_choice == "Paper"
    @winner = "Nobody" if @choice == "Scissors" && @comp_choice == "Scissors"
    return @winner
  end
end
