require 'game'

describe Game do
  let(:subject) { described_class.new(player01) }
  let(:player01) { double(:player01) }

  describe '#player' do
    it 'stores a player' do
      expect(subject.player).to be(player01)
    end
  end
end
