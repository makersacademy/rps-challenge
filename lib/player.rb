class Player
  attr_accessor :move, :player_2_move, :win_count, :lose_count
  attr_reader :name

  def initialize name
    @name = name
    @move = []
    @player_2_move = []
    player_2
    @win_count = 0
    @lose_count = 0
  end

  def choose choice
    fail 'Incorrect Move' unless correct_choice? choice
    move << choice
    if win 
      "#{name} won"
      @win_count += 1
    elsif lose
      "#{name} lost"
      @lose_count += 1
    else
      "DRAW!"
    end
    move.clear
  end

  def correct_choice? choice
    choice == 'Rock' || choice == 'Paper' || choice == 'Scissors'
  end

  def win
    rock_wins= (player_2_move == ['Scissors'] && move == ['Rock'])
    scissors_wins = (player_2_move == ['Paper'] && move == ['Scissors'])
    paper_wins = (player_2_move == ['Rock'] && move == ['Paper'])
    true if rock_wins || scissors_wins || paper_wins
  end

  def lose
    paper_loses = (move == ['Paper'] && player_2_move == ['Scissors'])
    scissors_loses = (move == ['Scissors'] && player_2_move == ['Rock'])
    rock_loses = (move == ['Rock'] && player_2_move == ['Paper'])
    true if paper_loses || scissors_loses || rock_loses
  end

  def player_2
    opponent = %w(Rock, Paper, Scissors).sample
    player_2_move << opponent
  end
end
