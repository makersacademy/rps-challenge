require 'player'

describe Player do
  subject(:gon) { described_class.new('Gon') }

  describe '#name' do
    it 'returns player name' do
      expect(gon.name).to eq 'Gon'
    end
  end

  describe '#choose' do
    it "returns the player's chosen move" do
      gon.choose('rock')

      expect(gon.choice).to eq 'rock'
    end
  end
end
