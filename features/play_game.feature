feature 'I can play against a computer' do
   scenario 'I choose an option and there is a winner' do
     player1 = Player.new
     computer = Computer.new
     game = Game.new player1, computer
     player1.play "scissors"
     computer.moves= "paper"
-    expect(game.winner?).to eq "player1 wins"
-  end
+    expect(game.winner?).to eq "Player1 wins"
+  end
 end