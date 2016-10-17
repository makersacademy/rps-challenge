require './lib/player'

describe Player do

  let(:choice) {double :choice}
  let(:name) {double :name}
  subject(:player) {described_class.new(choice)}

  context 'player is initialised' do
    it 'records the players choice' do
      expect(player.choice).to eq(choice)
    end
  end
end
