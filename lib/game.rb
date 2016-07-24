require_relative 'player'
require_relative 'ai'
require_relative 'messages'

class Game
  attr_reader :player_1, :player_2, :message

  def initialize(player_1, player_2)
    @player_1 = player_1
    @player_2 = player_2
    @message = Messages.new
  end

  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  def battle_result
    draw? ? @message.draw_message : @message.round_win_message(battle_winner)
  end

  private
  def draw?
    @player_1.weapon == @player_2.weapon
  end

  def battle_winner
    case @player_1.weapon
    when "Rock"
      @player_2.weapon == "Scissors" ? @player_1 : @player_2
    when "Paper"
      @player_2.weapon == "Rock" ? @player_1 : @player_2
    when "Scissors"
      @player_2.weapon == "Paper" ? @player_1 : @player_2
    end
  end

  def new_round
    @player_1.weapon = nil
    @player_2.weapon = nil
  end
end
