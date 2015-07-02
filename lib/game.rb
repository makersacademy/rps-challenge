require_relative 'player'
# require_relative 'rules_options_module'

class Game

  class Game::RulesOptions

    @@options = ["rock", "paper", "scissors"]
    @@rules = ["Rock blunts Scissors", "Scissors cuts Paper", "Paper wraps Rock"]

    def self.options
      @@options
    end

    def self.rules
      @@rules
    end

    def self.set_options(options)
      @@options = options
    end

    def self.set_rules(rules)
      @@rules = rules
    end

  end

  attr_reader :player_1, :player_2

  def initialize playerClass
    @player_1 = initialize_player playerClass
    @player_2 = initialize_player playerClass

    player_1.opponent = player_2
    player_2.opponent = player_1
  end

  def initialize_player playerClass
    playerClass.new
  end

  def over?
    !player_1.choice.nil? and !player_1.opponent.choice.nil?
  end

  def won_lost_or_tied player
    fail 'You have to choose between rock, paper or scissors' unless player.choice
    fail 'Erm, you have no opponent :/' unless player.opponent
    fail 'Still waiting for your opponent to decide' unless player.opponent.choice

    if tied? player
      "You've tied"
    elsif winner? player
      "You won! :)"
    else
      "You lost :("
    end
  end

  private

  def winner? player
    rock_paper_scissors player
  end

  def tied? player
    player.choice == player.opponent.choice
  end

  def choice_to_number player
    to_convert = player.choice
    Game::RulesOptions::options.index(to_convert)
  end

  def rock_paper_scissors player

    your_number = choice_to_number(player)
    opponents_number = choice_to_number(player.opponent)
    # If all options are ordered such that, when wrapped circularly,
    # each option beats half the remaining elements counter clockwise and loses
    # to the other half clockwise then the logic states that
    # (your choice - opponents choice) modulus the number of choices is greater
    # than 0 and less than or equal to the number of choices divided by two.
    # Thus, if the last line of the method rock_paper_scissors is true then you have won.
    (your_number - opponents_number) % Game::RulesOptions::options.count > 0 &&
    (your_number - opponents_number) % Game::RulesOptions::options.count <= Game::RulesOptions::options.count / 2

  end

end
