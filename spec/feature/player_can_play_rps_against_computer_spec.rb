feature 'player can play Rock, paper, scissors against the computer' do
  scenario 'player plays against the computer' do
    player = Player.new("Jade")
    round = Game.new
    allow(round).to receive(:make_move).and_return("Scissors")
    expect(round.play(player.name, "Rock")
      ).to eq 'Jade chose: Rock Computer chose: Scissors, Jade wins!'
  end
end
