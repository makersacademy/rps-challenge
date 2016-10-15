require 'player'

describe Player do

  subject(:frances) { described_class.new("Frances") }

  describe '#initialize' do
    it 'allows you to register a name' do
      expect(frances.name).to eq "Frances"
    end
  end
end
