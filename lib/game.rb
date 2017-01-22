require_relative 'player'

class Game

  include Player

  attr_reader :player, :opponent

  NAMES = %w(Adrian Basile Ben Gurminder James Jaycee Joe Justin Matthew Olwen Paul Pete Rob Sam).freeze
  CHOICES = %w(Rock Paper Scissors).freeze

  def self.create(player_1_name, player_1_choice, player_2_name, player_2_choice)
    @game = Game.new(player_1_name, player_1_choice, player_2_name, player_2_choice)
  end

  def self.instance
    @game
  end

  def initialize(player_1_name, player_1_choice, player_2_name, player_2_choice)
    @player = {name: Player.name(player_1_name), choice: Player.choice(player_1_choice)}
    @opponent = {name: Player.name(player_2_name), choice: Player.choice(player_2_choice)}
  end

  def battle
    if CHOICES.index(@player[:choice]) == CHOICES.index(@opponent[:choice])
      "#{@player[:name]}'s #{@player[:choice]} matches #{@opponent[:name]}'s #{@opponent[:choice]} - draw!"
    elsif (CHOICES.index(@player[:choice]) - CHOICES.index(@opponent[:choice])) % 3 == 1
      "#{@player[:name]}'s #{@player[:choice]} beats #{@opponent[:name]}'s #{@opponent[:choice]} - #{@player[:name]} wins!"
    else
      "#{@opponent[:name]}'s #{@opponent[:choice]} beats #{@player[:name]}'s #{@player[:choice]} - #{@opponent[:name]} wins!"
    end
  end

end

x = Game.new("Rob", "Scissors","","")
puts x.player
puts x.opponent
