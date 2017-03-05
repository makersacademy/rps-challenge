class Game

  OPTIONS = [:rock, :paper, :scissors]
  RULES = {:rock => :scissors,
           :paper => :rock,
           :scissors => :paper }

  attr_reader :player, :choice, :options, :random_choice, :result

  def initialize(player)
    @player = player
    @options = OPTIONS
  end

  def self.create_game(player)
    @game = Game.new(player)
  end

  def self.instance
    @game
  end

  def select_option(choice)
    @choice = choice.downcase.to_sym
  end

  def generate_rand_option
    @random_choice = options.sample
  end

  def get_result(choice, random_choice)
    if choice == random_choice
      @result = :draw
    elsif RULES[choice] == random_choice
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
