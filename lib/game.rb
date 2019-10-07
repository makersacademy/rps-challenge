class Game

  attr_reader :user, :computer

  def self.set(user_choice, computer_choice=["rock", "paper", "scissors"])
    @game = Game.new(user_choice, computer_choice)
  end

  def self.get
    @game
  end

  def initialize(user_choice, computer_choice)
    @user = user_choice
    @computer = computer_choice.sample
  end

end
