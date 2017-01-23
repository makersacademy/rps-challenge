require 'opponent'

describe Opponent do
  subject(:opponent){described_class.new(player)}
  let(:player) {double :player}

  it 'should initialize with a name' do
    expect(opponent.name).to eq player
  end

  describe 'attack selector' do
    it 'should choose between Rock, Paper and Scissors' do
      allow(opponent).to receive(:attack_selector).and_return("Rock")
      expect(opponent.attack).to eq "Rock"
    end
  end

end
