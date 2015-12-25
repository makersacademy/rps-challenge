require 'user'

describe User do
  subject(:alan) { described_class.new('Alan') }

  describe '#name' do
    it 'returns the user\'s name' do
      expect(alan.name).to eq 'Alan'
    end
  end
end
