require 'player'

describe Player do
  let(:name) {"Norm"}
  subject(:player) {described_class.new(name)}

  context 'Initialization' do
    it 'Has a name' do
      expect(player.name).to eq name
    end
  end

  context 'Storing the players hand' do
    it 'Stores the hand' do
      player.give_hand :rock
      expect(player.hand).to eq :rock
    end
  end
end

