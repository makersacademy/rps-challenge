require_relative './player.rb'
require_relative './rules_list.rb'
require_relative './lizard_move.rb'
require_relative './paper_move.rb'
require_relative './rock_move.rb'
require_relative './scissors_move.rb'
require_relative './spock_move.rb'

class Game
  attr_reader :player1, :player2, :result, :current_player

  def initialize(player_names, player_class = Player, list_class = RulesList)
    @rules_list = list_class.new
    @player1 = player_class.new(player_names[0])
    @player2 = player_class.new(player_names[1])
    @current_player = player1
  end

  def make_move(move)
    if @move1.nil? 
      @move1 = create_move(move)
    else
      @move2 = create_move(move)
    end

    set_current_player
  end

  def moves_complete?
    !@move2.nil?
  end

  def decide_result
    winner_part = winner_message(@move1.vs(@move2))
    rule_part = @rules_list.rule([@move1.type, @move2.type])
    @result = "#{winner_part} - #{rule_part}"
  end

  def reset
    @result = ''
    @current_player = player1
    @move1 = nil
    @move2 = nil
  end

  def self.instance
    @current_game
  end

  def self.create(player_names)
    @current_game = Game.new(player_names)
  end

  private

  def set_current_player
    @current_player = @current_player == player1 ? player2 : player1
  end

  def create_move(move)
    case move
    when 'Lizard'
      LizardMove.new
    when 'Paper'
      PaperMove.new
    when 'Rock'
      RockMove.new
    when 'Scissors'
      ScissorsMove.new
    when 'Spock'
      SpockMove.new
    end
  end

  def winner_message(result)
    case result
    when nil
      "It's a draw"
    when @move1
      "#{player1.name} wins"
    else
      "#{player2.name} wins"
    end
  end
end
