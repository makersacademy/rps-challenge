require 'player'

describe Player do
  subject(:rocky) {described_class.new("Rocky")}

  describe '#name' do
    it 'returns the name' do
      expect(rocky.name).to eq "Rocky"
    end
  end
end