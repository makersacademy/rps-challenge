require 'player'

describe Player do
  subject(:player){described_class.new(name)}
  let(:name) {double :name}

  describe '#creation' do
    it 'should intitialize with a name' do
      expect(player.name).to eq name
    end
    it 'should intitialize with an empty weapon' do
      expect(player.weapon).to be_nil
    end
  end
end
