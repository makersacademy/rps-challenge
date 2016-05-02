require 'game'

describe Game do
  let(:player) { double :player, choice: 'Rock' }
  let(:computer) { double :player, choice: 'Paper' }

  it 'creates unique instance of self, second player defaulting to computer' do
    Game.create(player)
    expect(Game.instance).to be_instance_of(Game)
  end

  it 'declares a winner' do
    Game.create(player, computer)
    expect(Game.instance.winner).to eq(computer)
  end

  it 'declares a tie' do
    Game.create(player, computer)
    allow(player).to receive(:choice).and_return('Paper')
    expect(Game.instance.winner).to eq :tie
  end

end
