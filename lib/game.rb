# game class
class Game

  attr_reader :score
  attr_reader :names
  attr_reader :players

  WINNERS = [[:Scissors, :Paper], [:Paper, :Rock], [:Rock, :Scissors]]
  def self.instance
    @game
  end

  def self.create(player_class, player)
    @game = Game.new(player_class, player)
  end

  def initialize(player_class, player)
    @score = [0, 0] # score is made, index 0 = p1, 1 = p2
    @names = [player, 'Computer']
    @player_class = player_class
    @players = [@player_class.new(names[0]), @player_class.new(names[1])] 
  end

  def move(p1_choice, p2_choice)
    return [0, 0] if p1_choice == p2_choice
    return [1, 0] if WINNERS.include?([p1_choice.to_sym, p2_choice.to_sym])
    [0, 1] # can only be p2_winner as all other possibilities are accounted for
  end

  def make_move(p1_choice, p2_choice = 0)
    unless p2_choice.zero? then @score += move(p1_choice, p2_choice)
    else 
      move = move(p1_choice, rand_choice) 
    end
  end

  def rand_choice
    ['Rock', 'Paper', 'Scissors'].sample
  end

end
