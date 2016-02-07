require 'computer'

describe Computer do
  subject(:comp) {described_class.new}

  it 'initializes with all 3 moves' do
    expect(comp.moves).to include :rock, :paper, :scissors
  end

  it 'samples from moves array' do
    allow(comp).to receive(:comp_move).and_return(:rock)
    expect(comp.comp_move).to eq :rock
  end
end
