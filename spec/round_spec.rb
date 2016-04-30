require 'round'

describe Round do
  let(:player) { double :player, choice: 'Rock' }
  let(:computer) { double :player, choice: 'Paper' }

  it 'initializes with two players' do
    Round.create(player, computer)
    expect(Round.instance.players).to eq [player, computer]
  end

  it 'creates unique instance of self, second player defaulting to computer' do
    Round.create(player)
    expect(Round.instance).to be_instance_of(Round)
  end

  it 'declares a winner' do
    Round.create(player, computer)
    expect(Round.instance.winner).to eq(computer)
  end

  it 'declares a tie' do
    Round.create(player, computer)
    allow(player).to receive(:choice).and_return('Paper')
    expect(Round.instance.winner).to eq "no one, it's a tie"
  end

end
