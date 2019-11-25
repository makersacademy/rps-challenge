require 'players'
describe Players do
  subject(:players) { Players.new('Myra') }

  describe '#name' do
    it 'returns the names of the players' do
      expect(subject.name).to eq('Myra')
    end
  end
end
