require 'player'
describe Player do
  subject(:daria) {Player.new('Daria')}

  describe '#name' do
    it 'stores the name' do
      expect(daria.name).to eq 'Daria'
    end
  end
end