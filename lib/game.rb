class Game

  OPTIONS = [:rock, :paper, :scissors]
  RULES = {:rock => :scissors,
           :paper => :rock,
           :scissors => :paper }

  attr_reader :player_1, :player_2, :p1_choice, :options, :p2_choice, :result

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @options = OPTIONS
  end

  def self.create_game(player, computer)
    @game = Game.new(player, computer)
  end

  def self.instance
    @game
  end

  def p1_select_option(choice)
    @p1_choice = choice.downcase.to_sym
  end

  def p2_select_option(choice)
    @p2_choice = choice.downcase.to_sym
  end

  def get_computer_choice
    @p2_choice ||= player_2.generate_rand_option
  end

  def get_result(p1_choice, p2_choice)
    if p1_choice == p2_choice
      @result = :draw
    elsif RULES[p1_choice] == p2_choice
      @result = :win
    else
      @result = :lose
    end
    keep_score(result)
  end

  private
  def keep_score(result)
    if @result == :win
      player_1.add_point
    elsif @result == :lose
      player_2.add_point
    end
  end

end
