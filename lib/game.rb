class Game
  attr_reader :player1, :player2, :winner

  def initialize (player1, player2)
@player1 = player1
@player2 = player2
@winner = nil
  end

  def self.instance
  @game
  end

def self.create(player1, player2)
  @game = Game.new(player1, player2)
end

def computer_move
  moves = ['Rock', 'Paper', 'Scissors']
  player2.select_move(moves.sample)
end

def run_game
  if player1.move == 'Rock' && player2.move == 'Paper'
    @winner = player1.name

  elsif player1.move == 'Rock' && player2.move == 'Scissors'
    @winner = player1.name

  elsif player1.move == 'Scissors' && player2.move == 'Paper'
    @winner = player1.name

  elsif player1.move == 'Paper' && player2.move == 'Rock'
    @winner = player2.name

  elsif player2.move == 'Rock' && player1.move == 'Scissors'
    @winner = player2.name

  elsif player2.move == 'Scissors' && player1.move == 'Paper'
    @winner = player2.name

  elsif player2.move == 'Paper' && player1.move == 'Rock'
    @winner = player2.name

  # elsif player_input == computer_input
  #   puts "Player chose #{player_input},\n Computer chose #{computer_input}"
  #   puts "Tie, choose again"  #tried with this but returns r, s, p instead of word

elsif player1.move == 'Rock' && player2.move == 'Rock'||
        player1.move == 'Paper' && player2.move == 'Paper' ||
        player1.move == 'Scissors' && player2.move == 'Scissors'
    @winner = "Tie"
  end
end

end
