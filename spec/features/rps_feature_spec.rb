require 'game'


feature 'I can play against the computer and win' do

  scenario 'the winner is whoever wins 3 matches' do
    game = Game.new Player.new, Computer.new
    3.times do
      game.player1.play "scissors"
      game.player2.moves= "paper"
      game.referee
    end
    expect(game.winner?).to eq "Player1 wins"
  end
end