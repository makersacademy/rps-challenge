require_relative 'player'

class Game
  attr_reader :number_of_players, :p1, :p2, :rounds

  def initialize(number_of_players, p1 = Player.new('name1'), p2 = Player.new('name2'), rounds = 3)
    @number_of_players = number_of_players
    @players = [p1, p2]
    @p1 = p1
    @p2 = p2
    @rounds = rounds
  end

  def self.create(number_of_players)
    @game = Game.new(number_of_players)
  end 

  def self.instance
    @game
  end

  def save_name(name1, name2 = nil)
    @p1_name = @players.first
    @p2_name = @players.last
    # !name2 ? @players.last.save_name('Rocky McRock Face') : @players.last.save_name(name2)
  end

  def round_winner
  end

  def tally_result
  end

  def game_over?
  end

  def name_winner
  end

  private

  # def score
  #   weapons = ['Rock', 'Paper', 'Scissors']
  #   weapons.index(player1.selection) - options.index(player2.selection)
  # end


end
