require 'weapon'

describe Weapon do
  subject(:rock) { described_class.new(:rock) }

  describe '#beats?' do
    it 'rock beats scissors' do
      expect(rock.beats?(:scissors)).to be true
    end

    it 'rock does not beat paper' do
      expect(rock.beats?(:paper)).to be false
    end

    it 'rock does not beat rock' do
      expect(rock.beats?(:rock)).to be false
    end
  end
end