require 'settings'

describe Settings do
  describe 'Game Options Array - classic' do
    subject(:settings) { described_class.new("CLASSIC") }
    # let(:game) { double :game, :gamevariant => "classic" }
    it 'returns array' do
      expect(subject.weapon_list).to eq ['rock', 'paper', 'scissors']
    end
  end

  describe 'Game Options Array - spock' do
    subject(:settings) { described_class.new("SPOCK") }
    # let(:game) { double :game, :gamevariant => "spock" }
    it 'returns array' do
      expect(subject.weapon_list).to eq ['rock', 'paper', 'scissors', 'lizard', 'spock']
    end
  end
end
