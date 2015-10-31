require 'player'

describe Player do
  let(:name) {"Norm"}
  subject(:player) {described_class.new(name)}

  context 'Initialization' do
    it {is_expected.to respond_to(:name)}

    it 'Has a name' do
      expect(player.name).to eq name
    end
  end

  context 'Storing the players hand' do
    it {is_expected.to respond_to(:hand=)}
    it {is_expected.to respond_to(:hand)}

    it 'Stores the hand' do
      player.hand = :rock
      expect(player.hand).to eq :rock
    end
  end
end

