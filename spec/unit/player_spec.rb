require 'player'

describe Player do

  let(:player_1) { described_class.new("Jess") }
  let(:player_2) { described_class.new("James") }

  describe '#initialize' do
    it 'returns player name' do
      expect(player_1.name).to eq "Jess"
    end

    it 'has a choice equal to nil' do
      expect(player_1.choice).to eq nil
    end
  end
end
