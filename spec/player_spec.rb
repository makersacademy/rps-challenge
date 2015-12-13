require 'player'

describe Player do
  let(:player) { described_class.new 'Jon'}
  it 'has a player name after initialization' do
    expect(player.name).to eq 'Jon'
  end
  describe '#is_computer?' do
    it 'returns false by default' do
      expect(player.is_computer?).to be false
    end
  end
  describe '#reset' do
    it 'reset the element chosen by the player' do
      player.assign_element('rock')
      player.reset
      expect(player.element).to be nil
    end
  end
  describe '#assign_element' do
    it 'set the element chosen by the player' do
      player.assign_element('rock')
      expect(player.element).to eq 'rock'
    end
    it 'set a random element if nil is passed' do
      allow(described_class::ELEMENTS).to receive(:sample).and_return('rock')
      player.assign_element(nil)
      expect(player.element).to eq 'rock'
    end
    it 'returns a message about the element chosen' do
      msg = 'Jon chose rock'
      expect(player.assign_element('rock')).to eq msg
    end
    it 'raise an error if element passed is not valid' do
      msg = 'Element not valid'
      expect { player.assign_element('no available') }.to raise_error msg
    end
  end
end
