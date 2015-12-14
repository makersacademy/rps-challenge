require 'one_player'

describe One_player do

  subject(:player) { described_class.new('rock')}

  it 'initializes game with a choice' do
    expect(player.choice).to eq 'rock'
  end

end
