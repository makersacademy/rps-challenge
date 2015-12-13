class Game

 attr_reader  :players, :answer_p1, :answer_p2, :winner

 def initialize(player_1, player_2="Computer")
   @players = [player_1,player_2]
   @winner = nil
   @answer_p1 = nil
   @answer_p2 = nil
 end

 def add_play1_ans(ans1)
    @answer_p1 = ans1
 end

 def add_play2_ans(ans2)
    @answer_p2 = ans2
    com_play if @players[1].computer == true
 end

 def calc_winner
    ans_1 = @answer_p1
    ans_2 = @answer_p2
    # arr = [@answer_p1, @answer_p2]
    # 'player 1 wins' if arr == ([1,2] || [2,1] || [3,2])
    @result = 'draw' if ans_1 == ans_2
    @result = 'player 1 wins' if ans_1 == "1" && ans_2 == "3"
    @result = 'player 1 wins' if ans_1 == '2' && ans_2 == '1'
    @result = 'player 1 wins' if ans_1 == '3' && ans_2 == '2'
    @result = 'player 2 wins' if ans_2 == '1' && ans_1 == '3'
    @result = 'player 2 wins' if ans_2 == '2' && ans_1 == '1'
    @result = 'player 2 wins' if ans_2 == '3' && ans_1 == '2'
    @winner = @result
 end

 private

 def com_play
  @answer_p2 = rand(1..3).to_s
 end

end
