class Game

  attr_reader :player1
  attr_accessor :choice, :c_choice

  def initialize(player1)
    @player1 = player1
    @options = [:rock, :paper, :scissors]
  end

  def self.create_new_game(player1)
    @game = Game.new(player1)
  end

  def self.game_instance
    @game
  end

  def choice_message(choice)
    "You chose #{choice}"
  end

  def computer_choice
    @options.sample
  end

  def computer_choice_message(choice)
    "Computer chose #{choice.to_s}"
  end

  def game_started?
    !self.choice.nil?
  end

  def who_won(choice1, choice2)
    case
      when choice1 == :rock
        choice2 == :scissors ? @player1.name : "Computer"
      when choice1 == :paper
        choice2 == :rock ? @player1.name : "Computer"
      when choice1 == :scissors
        choice2 == :paper ? @player1.name : "Computer"
    end
  end
end
