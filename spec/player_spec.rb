require 'player'

describe Player do
  let(:player) { described_class.new 'bob' }
  context 'when created' do
    it 'has a name' do
      expect(player.name).to eq 'bob'
    end

    it 'is not ready' do
      expect(player).not_to be_ready
    end
  end

  context 'after been created' do
    it 'can choose an element' do
      player.choose :rock
      expect(player.chosen_element).to eq :rock
    end

    it 'raises an error if the element is not available' do
      expect { player.choose :gun }.to raise_error
    end

    it 'knows when is ready to play' do
      player.choose :paper
      expect(player).to be_ready
    end
  end
end