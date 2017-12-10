class Game

  attr_reader :player1
  attr_accessor :choice, :c_choice

  def initialize(player1)
    @player1 = player1
    @options = [:rock, :paper, :scissors, :lizard, :spock]
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

  def computer_wins
    "Computer wins!"
  end

  def player_wins
    "#{@player1.name} wins!"
  end

  def who_won(choice1, choice2)
    return "Draw!" if choice1 == choice2
    case
      when choice1 == :rock
        (choice2 == :scissors || choice2 == :lizard) ? player_wins : computer_wins
      when choice1 == :paper
        (choice2 == :rock || choice2 == :spock) ? player_wins : computer_wins
      when choice1 == :scissors
        (choice2 == :paper || choice2 == :lizard) ? player_wins : computer_wins
      when choice1 == :lizard
        (choice2 == :paper || choice2 == :spock) ? player_wins : computer_wins
      when choice1 == :spock
        (choice2 == :rock || choice2 == :scissors) ? player_wins : computer_wins
    end
  end
end
