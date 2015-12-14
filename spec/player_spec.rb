require 'player'

describe Player do
  let(:element) { double :element }
  let(:element_klass) { double :element_klass, new: element }
  let(:player) { described_class.new('Jon', element_klass) }
  it 'has a player name after initialization' do
    expect(player.name).to eq 'Jon'
  end
  describe '#is_computer?' do
    it 'returns false by default' do
      expect(player.is_computer?).to be false
    end
  end
  describe '#reset' do
    before do
      allow(element).to receive(:type)
    end
    it 'reset the element chosen by the player' do
      player.assign_element('rock')
      player.reset
      expect(player.element).to be nil
    end
  end
  describe '#assign_element' do
    before do
      allow(element).to receive(:type).and_return(:rock)
    end
    it 'set the element chosen by the player' do
      player.assign_element('rock')
      expect(player.element_type).to eq :rock
    end
    it 'returns a message about the element chosen' do
      msg = 'Jon chose rock'
      expect(player.assign_element('rock')).to eq msg
    end
  end
end
