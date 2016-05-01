require 'player'
describe Player do
subject(:kanye) {Player.new('Kanye')}

  describe '#name' do
    it 'returns the name' do
      expect(kanye.name). to eq 'Kanye'
    end
  end
end
