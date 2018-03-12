     class Game
       attr_reader :player1, :move, :cpu_move, :game_logic, :scoreboard
       def initialize(player1)
         @player1 = player1
         @scoreboard = { :cpu => 0, :user => 0, :draw => 0 }

         @game_logic = {
          'Rock' => { 'Rock' => 'Draw', 'Paper' => 'Lose', 'Sciccors' => 'Win' },
          'Paper' => { 'Rock' => 'Win', 'Paper' => 'Draw', 'Scissors' => 'Lose' },
          'Sciccors' => { 'Rock' => 'Lose', 'Paper' => 'Win', 'Sciccors' => 'Draw' }
        }

       end

       def self.create(player1)
         @game = Game.new(player1)
       end

       def self.instance
         @game
       end

       def select_move(move)
         @move = move
       end

       def cpu_move
         @cpu_move = ['Rock', 'Paper', 'Scissors'].sample
       end

       def compare(outcome)
         if outcome == 'Win'
           @scoreboard[:user] += 1
           'You win!'

         elsif outcome == 'Lose'
           @scoreboard[:cpu] += 1
           'You Lose'

         else
           @scoreboard[:draw] += 1
           "Its a draw"
         end
       end
end
