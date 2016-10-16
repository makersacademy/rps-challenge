require './lib/views/player'

describe Player do

  let(:choice) {double :choice}
  let(:name) {double :name}
  subject(:player) {described_class.new(choice, name)}

  context 'player is initialised' do
    it 'records the players choice' do
      expect(player.choice).to eq(choice)
    end
    it 'records the players name' do
      expect(game.name).to eq(name)
    end
  end
end
