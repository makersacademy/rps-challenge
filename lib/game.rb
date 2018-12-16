class Game
  def self.create(player_1, player_2)
    @game = Game.new(player_1, player_2)
  end

  def self.instance
    @game
  end

  attr_reader :winner

  P1_WINNING_MOVES = [
    ['Rock', 'Scissors'],
    ['Scissors', 'Paper'],
    ['Paper', 'Rock']
  ]

  def initialize(player_1, player_2)
    @players = [player_1, player_2]
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def play_round
    choices = [player_1.choice, player_2.choice]
    @winner = decide_winner(choices)
  end

  def decide_winner(choices)
    return 'Draw' if choices.first == choices.last
    return player_1.name if P1_WINNING_MOVES.include?(choices)
    player_2.name
  end
end
