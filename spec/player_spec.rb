require 'player'
describe Player do
  let(:name) {double(:name)}
  let(:player) {described_class.new(name)}
  let(:rock) {double(:rock)}

  describe '#choose' do
    it 'Should take an argument and change choice' do
      player.choose(rock)
      expect(player.choice).to eq rock
    end
  end

end
