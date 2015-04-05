feature 'player can play Rock, paper, scissors against the computer' do
  let(:player) { Player.new("Jade") }
  let(:round) { Game.new }
  before(:each) do
    allow(round).to receive(:make_move).and_return("Scissors")
  end
  scenario 'player plays against the computer with winning hand' do
    expect(round.play(player.name, "Rock")
      ).to eq 'Jade chose: Rock Computer chose: Scissors, Jade wins!'
  end
  scenario 'player and computer make same choice' do
    expect(round.play(player.name, "Scissors")
      ).to eq 'Jade chose: Scissors Computer chose: Scissors, Its a draw!'
  end
  scenario 'player inputs incorrect value' do
    expect do
      round.play(player.name, "blah")
    end.to raise_error "I don't recognise that move, try again"
  end
end
