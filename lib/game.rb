require_relative 'handsigns'

class Game
  attr_reader :player_name, :computer_name, :player_sign, :computer_sign
  include Handsigns

  def initialize(player)
    @player_name = player.name
    @computer_name = ['Dio Padre', 'Jehovah', 'Yahweh'].sample
  end

  def self.start(player)
    @game = new(player)
  end

  def self.instance
    @game
  end

  def save_player_sign(sign)
    @player_sign = sign.downcase.to_sym
  end

  def set_computer_sign
    @computer_sign = signs.sample
  end

  def winner_name
    return "No one" if computer_sign == player_sign
    return @player_name if winning_sign(computer_sign, player_sign) == player_sign
    @computer_name
  end
end
