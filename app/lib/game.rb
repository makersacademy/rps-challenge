class Game

 attr_reader  :players, :answer_p1, :answer_p2, :winner, :page
 
 def initialize(player_1, player_2="Computer")
   @players = [player_1,player_2]
   @winner = nil
   @answer_p1 = nil
   @answer_p2 = nil
   @page = nil
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
    check_input
    @winner = players[1].name
    @winner = 'Draw' if ans_1 == ans_2
    @winner = players[0].name if
    (ans_1 == "1" && ans_2 == "3") ||(ans_1 == '2' && ans_2 == '1') ||
      (ans_1 == '3' && ans_2 == '2')
    select_page
 end

   private

   def select_page
     if @winner == 'Draw' && @players[1].computer == true
      @page = 'results_draw1'
      elsif @winner == 'Draw'
      @page = 'results_draw'
     else
      @players[1].computer ? @page = 'results1' : @page = 'results'
     end
      @page = @page.to_sym
   end

   def com_play
      @answer_p2 = Kernel.rand(1..3).to_s
   end

   def check_input
      fail 'incorrect input - select between 1-3' unless
        @answer_p1 == '1' || @answer_p1 == '2' || @answer_p1 == '3'
      fail 'incorrect input - select between 1-3' unless
        @answer_p2 == '1' || @answer_p2 == '2' || @answer_p2 == '3'
   end

end
