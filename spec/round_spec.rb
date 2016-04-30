require 'round'

describe Round do
  let(:player) { double :player }
  let(:computer) { double :player }
  subject(:round) { described_class.new(player, computer) }

it 'initializes with two players' do
  expect(round.players).to eq [player, computer]
end

it 'creates unique instance of self, second player defaulting to computer' do
  Round.create(player)
  expect(Round.instance).to be_instance_of(Round)
end

end
