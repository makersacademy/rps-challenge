require 'round'

describe Round do
  let(:player) { double :player }
  let(:computer) { double :player }

  it 'initializes with two players' do
    Round.create(player, computer)
    expect(Round.instance.players).to eq [player, computer]
  end

  it 'creates unique instance of self, second player defaulting to computer' do
    Round.create(player)
    expect(Round.instance).to be_instance_of(Round)
  end

end
