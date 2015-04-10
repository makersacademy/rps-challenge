feature 'player can play Rock, paper, scissors against the computer' do
  let(:player) { Player.new }
  let(:round) { Game.new }
  let(:droid) { double :droid }
  before(:each) do
    player.name = "Jade"
    # allow(round).to receive(:make_move).and_return("Scissors")
    allow(droid).to receive(:make_move).and_return("Scissors")
  end
  scenario 'player plays against the computer with winning hand' do
    expect(round.play("Rock", droid.make_move)
          ).to eq 'Player chose: Rock Computer chose: Scissors, Player wins!'
  end
  scenario 'player and computer make same choice' do
    expect(round.play("Scissors", droid.make_move)
          ).to eq 'Player chose: Scissors Computer chose: Scissors, Its a draw!'
  end
end
