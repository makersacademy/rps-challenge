require_relative 'player'

class Game
  attr_reader :player, :opponent, :winner

  include Player

  OUTCOMES = { rock: { defeats: %w(Scissors Lizard) },
               paper: { defeats: %w(Rock Spock) },
               scissors: { defeats: %w(Paper Lizard) },
               lizard: { defeats: %w(Paper Spock) },
               spock: { defeats: %w(Scissors Rock) } }.freeze

  def self.create(player_1_name, player_1_choice, player_2_name, player_2_choice)
    @game = Game.new(player_1_name, player_1_choice, player_2_name, player_2_choice)
  end

  def self.instance
    @game
  end

  def initialize(player_1_name, player_1_choice, player_2_name, player_2_choice)
    @player = { name: Player.name(player_1_name), choice: Player.choice(player_1_choice) }
    @opponent = { name: Player.name(player_2_name), choice: Player.choice(player_2_choice) }
    @winner = @player[:choice].downcase
  end

  def battle
    if @player[:choice] == @opponent[:choice]
      "#{@player[:name]}'s #{@player[:choice]} matches #{@opponent[:name]}'s #{@opponent[:choice]} - draw!"
    elsif OUTCOMES[@player[:choice].downcase.to_sym][:defeats].include?(@opponent[:choice])
      "#{@player[:name]}'s #{@player[:choice]} beats #{@opponent[:name]}'s #{@opponent[:choice]} - #{@player[:name]} wins!"
    else
      @winner = @opponent[:choice].downcase
      "#{@opponent[:name]}'s #{@opponent[:choice]} beats #{@player[:name]}'s #{@player[:choice]} - #{@opponent[:name]} wins!"
    end
  end
end
