require 'player'

describe Player do
  subject(:lawrence) {Player.new('Lawrence', 'rocks')}

  describe '#name' do
    it 'returns the players name' do
      expect(lawrence.name).to eq 'Lawrence'
    end
  end

  describe '#choice' do
    it 'returns the players choice' do
      expect(lawrence.choice).to eq 'rocks'
    end
  end
end
