require 'player'

describe Player do
  subject(:player) { described_class.new(name) }
  let(:name) {double :name}
  let(:choice) {double :choice}

  describe '#name' do
    it 'player has a name' do
      expect(player.name).to eq name
    end
  end

  describe '#choice' do
    it 'player makes a choice' do
      expect(player.make_choice(choice)).to eq choice
    end
  end
end
