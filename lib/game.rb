class Game
  attr_reader :player_1, :player_2
  require_relative 'mode'

  POSSIBLE_MOVES = {
    :rock => { :paper => :lose, :scissors => :win, :spock => :lose, :lizard => :win },
    :paper => { :rock => :win, :scissors => :win, :spock => :win, :lizard => :lose },
    :scissors => { :rock => :lose, :paper => :lose, :spock => :lose, :lizard => :win },
    :spock => { :rock => :draw, :paper => :lose, :scissors => :win, :lizard => :lose },
    :lizard => { :rock => :lose, :paper => :lose, :scissors => :win, :spock => :win }
  }

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    if Mode.instance.game_mode == 'Single Player Mode'
      @player_2.add_move(['Rock', 'Paper', 'Scissors', 'Spock', 'Lizard'].sample)
    end
  end

  def self.init(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def winner
    if player_one_wins == :win
      @player_1.name
    elsif player_one_wins == :lose
      @player_2.name
    else
      'draw'
    end
  end

  def loser
    if player_one_wins == :win
      @player_2.name
    elsif player_one_wins == :lose
      @player_1.name
    end
  end

  private

  def player_one_wins
    return 'draw' if @player_1.move == @player_2.move
    POSSIBLE_MOVES[@player_1.move.downcase.to_sym][@player_2.move.downcase.to_sym]
  end
end