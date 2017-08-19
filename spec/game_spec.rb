require 'game'

describe Game do
  let(:player1){ double :player }
  let(:game){described_class.new(player1)}
  let(:kernel) { double :kernel}

  it 'returns rock if random number is 0' do
    allow(kernel).to receive(:rand).with(2).and_return(0)
    expect(game.comp_choice(kernel)).to eq "Rock"
  end

  it 'returns paper if random number is 1' do
    allow(kernel).to receive(:rand).with(2).and_return(1)
    expect(game.comp_choice(kernel)).to eq "Paper"
  end

  it 'returns scissors if random number is 2' do
    allow(kernel).to receive(:rand).with(2).and_return(2)
    expect(game.comp_choice(kernel)).to eq "Scissors"
  end
end
