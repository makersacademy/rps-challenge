require 'player'

describe Player do
  let (:subject) { described_class.new("Ayelisha") }
  describe '#player_name' do
    it 'returns the players name' do
      expect(subject.name).to eq "Ayelisha"
    end
  end
end
