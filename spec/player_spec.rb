require 'player'

describe Player do
  subject(:sachin) {described_class.new('Sachin')}

  describe '#initializa' do
    it 'returns name of player' do
      expect(sachin.name).to eq 'Sachin'
    end
  end

end