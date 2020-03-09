require_relative './results'
require_relative './player'

class Game
  attr_reader :player_1, :player_2, :current_player, :game_over, :results

  def initialize(player_1, player_2, results = Results.new(player_1, player_2))
    @turn = true
    @player_1 = player_1
    @player_2 = player_2
    @current_player = player_1
    @results = results
  end

# class methods for singleton principle - lets us only have one game
  def self.create(player_1, player_2, results)
    @game = Game.new(player_1, player_2, results)
  end

  def self.instance
    @game
  end

  def turn(choice)
    if @player_1.choice != nil && @player_2.choice != nil
      end_game
    else
      play(choice)
    end
  end

  def play(choice)
    @current_player.store_choice(choice)
    @results.calculate_results
    end_game
    switch_players
  end

  def turn?
    @true = !@true
  end

  def switch_players
    @true ? @current_player = player_1 : @current_player = player_2
    turn?
  end

  def end_game
    @game_over = true if @player_1.choice && @player_2.choice != nil
  end

  def reset
    @player_1.choice = nil
    @player_2.choice = nil
  end

end
