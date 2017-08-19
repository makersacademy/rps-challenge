require 'game'

describe Game do
  let(:player1) { double :player }
  let(:game) { described_class.new(player1) }
  let(:kernel) { double :kernel }

  it 'returns rock if random number is 0' do
    allow(kernel).to receive(:rand).with(3).and_return(0)
    game.comp_choose(kernel)
    expect(game.comp_choice).to eq "Rock"
  end

  it 'returns paper if random number is 1' do
    allow(kernel).to receive(:rand).with(3).and_return(1)
    game.comp_choose(kernel)
    expect(game.comp_choice).to eq "Paper"
  end

  it 'returns scissors if random number is 2' do
    allow(kernel).to receive(:rand).with(3).and_return(2)
    game.comp_choose(kernel)
    expect(game.comp_choice).to eq "Scissors"
  end

  it "tells you if you've won" do
    allow(kernel).to receive(:rand).with(3).and_return(2)
    game.choice = "Rock"
    game.comp_choose(kernel)
    game.determine_outcome
    expect(game.outcome).to eq "You win!"
  end

  it "tells you if you've lost" do
    allow(kernel).to receive(:rand).with(3).and_return(1)
    game.choice = "Rock"
    game.comp_choose(kernel)
    game.determine_outcome
    expect(game.outcome).to eq "You lose!"
  end

  it "tells you if it's a draw" do
    allow(kernel).to receive(:rand).with(3).and_return(0)
    game.choice = "Rock"
    game.comp_choose(kernel)
    game.determine_outcome
    expect(game.outcome).to eq "It's a draw!"
  end

end
