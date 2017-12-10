class Game

  attr_reader :player1, :win_count, :total_games
  attr_accessor :choice, :c_choice

  def initialize(player1)
    @player1 = player1
    @options = [:rock, :paper, :scissors, :lizard, :spock]
    @win_count = 0
    @total_games = 0
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

  def percentage_wins
    return 0 if @total_games == 0
    (100*(@win_count / @total_games.to_f)).round(2)
  end

  def reset
    @choice = nil
    @win_count = 0
    @total_games = 0
  end

  def who_won(choice1, choice2)
    @total_games += 1
    return "Draw!" if choice1 == choice2
    case
      when choice1 == :rock
        (choice2 == :scissors || choice2 == :lizard) ? (@win_count += 1; player_wins) : computer_wins
      when choice1 == :paper
        (choice2 == :rock || choice2 == :spock) ? (@win_count += 1; player_wins) : computer_wins
      when choice1 == :scissors
        (choice2 == :paper || choice2 == :lizard) ? (@win_count += 1; player_wins) : computer_wins
      when choice1 == :lizard
        (choice2 == :paper || choice2 == :spock) ? (@win_count += 1; player_wins) : computer_wins
      when choice1 == :spock
        (choice2 == :rock || choice2 == :scissors) ? (@win_count += 1; player_wins) : computer_wins
    end
  end
end
