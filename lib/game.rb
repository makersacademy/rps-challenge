class Game

  OPTIONS = [:rock, :paper, :scissors]
  RULES = {:rock => :scissors,
           :paper => :rock,
           :scissors => :paper }

  attr_reader :player, :computer, :choice, :options, :computer_choice, :result

  def initialize(player, computer)
    @player = player
    @computer = computer
    @options = OPTIONS
  end

  def self.create_game(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def select_option(choice)
    @choice = choice.downcase.to_sym
  end

  def get_computer_choice
    @computer_choice = computer.generate_rand_option
  end

  def get_result(choice, computer_choice)
    if choice == computer_choice
      @result = :draw
    elsif RULES[choice] == computer_choice
      @result = :win
    else
      @result = :lose
    end
  end

  def print_message(result)
    if result == :draw
      "It's a #{result.to_s}!"
    else
      "You #{result}!"
    end
  end


end
