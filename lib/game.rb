require_relative 'handsigns'

class Game
  attr_reader :player_name, :computer_name, :player_sign, :computer_sign
  include Handsigns

  def initialize(player)
    @player = player
    @player_name = player.name
    @computer_name = ['Bender', 'R2D2', 'Terminator'].sample
    @computer = player.class.new(@computer_name)
  end

  def self.create(player)
    @game = self.new(player)
  end

  def self.instance
    @game
  end

  def set_player_sign(sign)
    puts "Player sign: #{sign}"
    @player_sign = sign.downcase.to_sym
  end

  def set_computer_sign
    @computer_sign = signs.sample
    puts "Computer sign: #{@computer_sign}"

  end

  def winner_name
    return "No one" if computer_sign == player_sign
    return @player_name if winning_sign(computer_sign, player_sign) == player_sign
    return @computer_name
  end
end
