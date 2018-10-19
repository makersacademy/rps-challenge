class Game
def initialize
choice = [:rock, :paper, :scissors]
@draw = [[:rock, :rock], [:paper, :paper], [:scissors, :scissors]]
@win_play_1 = [[:paper, :rock], [:rock, :scissors], [:scissors, :paper]]
@outcome = []
end

def win(player)
player.win_point
end

def computers_turn(arr)
arr.sample
@player_1 = computers_turn(choice)
end

def player_1_turn(arr)
arr.sample
@player_2 = player_1_turn(choice)
end

def outcome
@outcome.push(@player_1, @player_2)
end

def is_draw
@draw.include?@outcome
end

def play_1_win
@win_play_1.include?@outcome
end

def player_1_outcome
puts "Player 1 has won"
end

def player_2_outcome
puts "Player 2 has won"
end

def result
  if is_draw == true
    puts "Its a draw"
  elsif play_1_win == true
    player_1_outcome
  else
    player_2_outcome
  end
end

end

game = Game.new
game.result

# class Player
# DEFAULT_WINS = 0
# attr_reader :name, :wins

# def initialize(name, wins = DEFAULT_WINS)
# @name = name
# @wins = wins
# end


# end
