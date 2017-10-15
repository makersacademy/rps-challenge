require './lib/player'

describe Player do
  let(:fake_name) { 'player_with_no_name' }
  subject(:player) { described_class.new(fake_name) }
  describe '#name' do
    it 'returns name' do
      expect(subject).to respond_to(:name)
    end
  end

end
