# frozen_string_literal: true

class Game
  attr_reader :players, :winner

  def initialize(player_one = Player.new, player_two = Player.new)
    @players = [player_one, player_two]
  end

  def player_one
    @players.first
  end

  def player_two
    @players.last
  end

  def selection(player, value)
    player.receive_choice(value)
  end

  def random_selection(player)
    player.receive_choice(%w[Rock Paper Scissors Rock Paper Scissors].sample)
  end

  def results(player_one, player_two)
    combo_one = (player_one.choice == 'Rock' && player_two.choice == 'Scissors')
    combo_two = (player_one.choice == 'Scissors' && player_two.choice == 'Paper')
    combo_three = (player_one.choice == 'Paper' && player_two.choice == 'Rock')
    if combo_one || combo_two || combo_three
      @winner = player_one.name
    elsif player_one.choice == player_two.choice
      @winner = nil
    else
      @winner = player_two.name
    end
  end

  def self.create(player_one, player_two)
    @game ||= Game.new(player_one, player_two)
  end

  def self.instance
    @game
  end

  def self.remove(game)
    remove_instance_variable(game)
  end
end
