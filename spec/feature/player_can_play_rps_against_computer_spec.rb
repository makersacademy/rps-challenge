feature 'player can play Rock, paper, scissors against the computer' do
  scenario 'player plays against the computer in the command line' do
    player = Player.new("Jade")
    round = Game.new
    allow(round).to receive(:computer_move).and_return("scissors")
    round.computer_move
    expect(round.play("rock")).to eq "Jade wins!"
  end
end
