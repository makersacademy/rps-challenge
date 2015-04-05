feature 'player can play Rock, paper, scissors against the computer' do
  scenario 'player plays against the computer' do
    player = Player.new("Jade")
    computer = RpsDroid.new
    round = Game.new
    allow(computer).to receive(:make_move).and_return("Scissors")
    expect(round.play(player.name, "Rock", computer.make_move)
      ).to eq "Jade wins!"
  end
end
